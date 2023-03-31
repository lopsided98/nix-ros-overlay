{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.ros;
  
  commonServiceOptions = {
    package = mkOption {
      type = types.str;
      description = ''
        ROS package name containing this node or launch file. This is the ROS
        name for the package, rather than the attribute name, meaning it uses
        underscores rather than dashes.
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

  commonServiceConfig = { name, config, ... }: {
    # Try to convert package name to attribute and add it to the
    # environment
    paths = let
      packageAttr = replaceStrings ["_"] ["-"] config.package;
    in optional (hasAttr packageAttr cfg.pkgs) cfg.pkgs."${packageAttr}";

    env = mkDefault (cfg.pkgs.buildEnv {
      name = "ros-node-${name}-env";
      inherit (config) paths;
    });
  };
  
  serviceGenerator = execStartFn: services: mapAttrs' (name: config: nameValuePair name {
    serviceConfig = {
      Type = "exec";
      StateDirectory = "ros";
      WorkingDirectory = "/var/lib/ros";
      User = "ros";
      Group = "ros";
      ExecStart = execStartFn config;
    };
    wants = [ "roscore.service" ];
    after = [ "roscore.service" ];
    wantedBy = [ "multi-user.target" ];
    environment = {
      ROS_HOSTNAME = cfg.hostname;
      ROS_MASTER_URI = cfg.masterUri;
      ROS_HOME = "/var/lib/ros";
    };
  }) services;
in {
  # Interface

  options.services.ros = {
    nodes = mkOption {
      type = types.attrsOf (types.submodule ({ name, config, ... }@args: {
        options = commonServiceOptions // {
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

          params = mkOption {
            type = types.attrsOf types.str;
            default = {};
            description = ''
              Key-value parameters to pass to the node.
            '';
          };
        };

        config = mkMerge [
          (commonServiceConfig args)
          { paths = [ cfg.pkgs.rosbash ]; }
        ];
      }));
      default = {};
      description = ''
        ROS nodes to launch at boot as systemd services.
      '';
    };

    launchFiles = mkOption {
      type = types.attrsOf (types.submodule ({ name, config, ... }@args: {
        options = commonServiceOptions // {
          launchFile = mkOption {
            type = types.str;
            description = ''
              Name of the launch file to be passed to roslaunch.
            '';
          };

          args = mkOption {
            type = types.attrsOf types.str;
            default = {};
            description = ''
              Key-value arguments to pass to the launch file (defined in <arg>
              tags)
            '';
          };

          roslaunchArgs = mkOption {
            type = types.listOf types.str;
            default = [];
            description = ''
              Extra command line arguments to pass to roslaunch.
            '';
          };
        };

        config = mkMerge [
          (commonServiceConfig args)
          { paths = [ cfg.pkgs.roslaunch ]; }
        ];
      }));
      default = {};
      description = ''
        ROS launch files to start at boot as systemd services.
      '';
    };
  };

  # Implementation

  config = mkIf cfg.enable {
    systemd.services = mkMerge [
      (serviceGenerator (config: escapeShellArgs (
        [ "${config.env}/bin/rosrun" config.package config.node ] ++
        (mapAttrsToList (n: v: "${n}:=${v}") config.params) ++
        config.args
      )) cfg.nodes)
      (serviceGenerator (config: escapeShellArgs (
        [ "${config.env}/bin/roslaunch" "--wait" ] ++ 
        config.roslaunchArgs ++ 
        [ config.package config.launchFile ] ++
        (mapAttrsToList (n: v: "${n}:=${v}") config.args)
      )) cfg.launchFiles)
    ];
  };
}
