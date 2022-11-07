{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.ros2;

  pkgsType = mkOptionType {
    name = "ros-packages";
    description = "ROS package set";
    check = p: isAttrs p && hasAttr "ament-cmake" p;
  };
  overlayType = mkOptionType {
    name = "ros-overlay";
    description = "ROS package set overlay";
    check = isFunction;
  };
in {
  # Interface

  options.services.ros2 = {
    enable = mkEnableOption "Robot Operating System, version 2";

    distro = mkOption {
      type = types.str;
      default = "humble";
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
      apply = composeManyExtensions;
      description = ''
        Set of package overlays to apply to ROS package set for the configured
        distro.
      '';
    };

    domainId = mkOption {
      type = types.ints.between 0 232;
      default = 0;
      description = ''
        DDS Domain ID that defines the ports used for communication between
        processes.
      '';
    };

    systemPackages = mkOption {
      default = p: [];
      example = literalExample "p: with p; [ ros2cli ros2run ]";
      description = ''
        Packages to add to a ROS environment that will be added to the system
        PATH. The provided function will be passed the package set configured by
        <option>services.ros.pkgs</option>.
      '';
    };
  };

  # Implementation

  config = mkIf cfg.enable {
    # FIXME: mkAfter is used to make sure the Python overlay is applied. That
    # means all other user configured Python overlays are ignored. This needs a
    # fix in nixpkgs: https://github.com/NixOS/nixpkgs/issues/44426
    nixpkgs.overlays = mkAfter (singleton (import ../../overlay.nix));

    services.ros2.pkgs = mkDefault (pkgs.rosPackages."${cfg.distro}".overrideScope cfg.overlays);

    environment.variables.ROS_DOMAIN_ID = toString cfg.domainId;

    environment.systemPackages = let
      paths = cfg.systemPackages cfg.pkgs;
    in mkIf (length paths != 0) [ (cfg.pkgs.buildEnv {
      name = "ros2-system-env";
      inherit paths;
      extraOutputsToInstall = optional config.environment.enableDebugInfo "debug";
    }) ];
  };
}
