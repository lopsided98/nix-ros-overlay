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

    applyOverlay = mkOption {
      type = types.bool;
      default = false;
      description = ''
        Whether this module should inject `nix-ros-overlay` into
        <option>nixpkgs.overlays</option>.

        Defaults to `false`: the consumer is expected to add
        `nix-ros-overlay.overlays.default` to their nixpkgs instantiation
        explicitly (for example via flake-parts, blueprint, or a manual
        `import nixpkgs { overlays = [ ... ]; }`). This avoids ambiguity
        about where the overlay is applied and prevents accidental
        double application, which duplicates package patches and breaks
        builds (e.g. `libfyaml` reversed-patch errors).

        Set to `true` only when the module is the single owner of the
        overlay and no other code path has already applied it.
      '';
    };

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
    assertions = [{
      assertion = cfg.applyOverlay || (pkgs ? rosPackages);
      message = ''
        services.ros2 is enabled but nix-ros-overlay is not applied to
        pkgs (pkgs.rosPackages is missing). Add
        nix-ros-overlay.overlays.default to your nixpkgs.overlays, or
        set services.ros2.applyOverlay = true to let this module inject
        the overlay for you.
      '';
    }];

    warnings = lib.optional (cfg.applyOverlay && (pkgs ? rosPackages)) ''
      services.ros2.applyOverlay = true but nix-ros-overlay is already
      present in pkgs (pkgs.rosPackages exists). The overlay will be
      applied a second time, which duplicates package patches and
      breaks builds. Set services.ros2.applyOverlay = false (the
      default) and rely on the overlay already present in pkgs.
    '';

    # When the module owns the overlay injection, apply it with mkAfter
    # so the Python overlay (which uses overrideScope) lands after any
    # user overlays that use packageOverrides, preserving composition.
    nixpkgs.overlays = mkIf cfg.applyOverlay
      (mkAfter (singleton (import ../../overlay.nix)));

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
