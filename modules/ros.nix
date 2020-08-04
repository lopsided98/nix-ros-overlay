{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.ros;

  pkgsType = mkOptionType {
    name = "ros-packages";
    description = "ROS package set";
    check = p: isAttrs p && hasAttr "roslaunch" p;
  };
  overlayType = mkOptionType {
    name = "ros-overlay";
    description = "ROS package set overlay";
    check = isFunction;
  };
in {
  # Interface

  options.services.ros = {
    enable = mkEnableOption "Robot Operating System";

    distro = mkOption {
      type = types.str;
      default = "noetic";
      description = ''
        ROS distro to use. Must be defined in distros/default.nix.
      '';
    };

    pkgs = mkOption {
      type = pkgsType;
      description = ''
        ROS package set for the selected distro.
      '';
    };

    overlays = mkOption {
      type = types.listOf overlayType;
      default = [];
      apply = foldr composeExtensions (_: _: {});
      description = ''
        Set of package overlays to apply to ROS package set for the configured
        distro.
      '';
    };

    hostname = mkOption {
      type = types.str;
      example = "localhost";
      description = ''
        Value of the ROS_HOSTNAME environment variable. Defaults to
        <option>networking.hostName</option>.
      '';
    };

    masterUri = mkOption {
      type = types.str;
      example = "https://localhost:11311/";
      description = ''
        Value of the ROS_MASTER_URI environment variable.
      '';
    };

    nodes = mkOption {
      type = types.attrsOf (types.submodule ({ name, config, ... }: {
        options = {
          package = mkOption {
            type = types.str;
            description = ''
              ROS package name containing this node. This is the ROS name for
              the package, rather than the attribute name, meaning it uses
              underscores rather than dashes.
            '';
          };

          node = mkOption {
            type = types.str;
            description = ''
              Name of the node to launch.
            '';
          };

          args = mkOption {
            type = types.listOf types.str;
            default = [];
            description = ''
              Arguments to pass to the node.
            '';
          };

          paths = mkOption {
            type = types.listOf types.package;
            description = ''
              Additional paths to add to the environment of this node. The
              <option>package</option> option will be turned into an attribute
              name and automatically added to this option if valid.
            '';
          };

          env = mkOption {
            type = types.package;
            description = ''
              Environment created with the ROS specific buildEnv function for
              this node.
            '';
          };
        };

        config = {
          # Try to convert package name to attribute and add it to the
          # environment
          paths = [ cfg.pkgs.rosbash ] ++ (let
            packageAttr = replaceStrings ["_"] ["-"] config.package;
          in optional (hasAttr packageAttr cfg.pkgs) cfg.pkgs."${packageAttr}");

          env = mkDefault (cfg.pkgs.buildEnv {
            name = "ros-node-${name}-env";
            inherit (config) paths;
          });
        };
      }));
      default = {};
      description = ''
        ROS nodes to launch at boot as systemd services.
      '';
    };
  };

  # Implementation

  config = mkIf cfg.enable {
    # FIXME: mkAfter is used to make sure the Python overlay is applied. That
    # means all other user configured Python overlays are ignored. This needs a
    # fix in nixpkgs: https://github.com/NixOS/nixpkgs/issues/44426
    nixpkgs.overlays = mkAfter (singleton (import ../overlay.nix));

    services.ros = {
      pkgs = mkDefault (pkgs.rosPackages."${cfg.distro}".extend cfg.overlays);

      hostname = mkDefault config.networking.hostName;
      masterUri = mkDefault "http://${cfg.hostname}:11311/";
    };

    environment.variables = {
      ROS_HOSTNAME = cfg.hostname;
      ROS_MASTER_URI = cfg.masterUri;
    };

    users = {
      users.ros = {
        group = "ros";
        isSystemUser = true;
      };
      groups.ros = { };
    };

    systemd.services = mapAttrs' (name: config: nameValuePair name {
      serviceConfig = {
        Type = "exec";
        StateDirectory = "ros";
        User = "ros";
        Group = "ros";
        ExecStart = escapeShellArgs ([ "${config.env}/bin/rosrun" config.package config.node ] ++ config.args);
      };
      wantedBy = [ "multi-user.target" ];
      environment = {
        ROS_HOSTNAME = cfg.hostname;
        ROS_MASTER_URI = cfg.masterUri;
        ROS_HOME = "/var/lib/ros";
      };
    }) cfg.nodes;
  };
}
