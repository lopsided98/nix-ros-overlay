{
  config,
  lib,
  pkgs,
  ...
}:

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
in
{
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
      default = [ ];
      apply = composeManyExtensions;
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

    systemPackages = mkOption {
      default = p: [ ];
      example = literalExample "p: with p; [ roslaunch ]";
      description = ''
        Packages to add to a ROS environment that will be added to the system
        PATH. The provided function will be passed the package set configured by
        <option>services.ros.pkgs</option>.
      '';
    };
  };

  # Implementation

  config = mkIf cfg.enable {
    # mkAfter is used to make sure the Python overlay (which uses overrideScope)
    # is applied after any user overlays that use packageOverrides, so that
    # composition works.
    nixpkgs.overlays = mkAfter (singleton (import ../../overlay.nix));

    services.ros = {
      pkgs = mkDefault (pkgs.rosPackages."${cfg.distro}".overrideScope cfg.overlays);

      hostname = mkDefault config.networking.hostName;
      masterUri = mkDefault "http://${cfg.hostname}:11311/";
    };

    environment.variables = {
      ROS_HOSTNAME = cfg.hostname;
      ROS_MASTER_URI = cfg.masterUri;
    };

    environment.systemPackages =
      let
        paths = cfg.systemPackages cfg.pkgs;
      in
      mkIf (length paths != 0) [
        (cfg.pkgs.buildEnv {
          name = "ros-system-env";
          inherit paths;
          extraOutputsToInstall = optional config.environment.enableDebugInfo "debug";
        })
      ];
  };
}
