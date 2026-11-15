# Define all supported ROS distros

self: super: {
  rosPackages = rec {
    recurseForDerivations = true;
    lib = super.lib // import ../lib { inherit lib self; };

    # A distro's package set as a scope; see distro-overlay.nix for the
    # arguments. From outside this repo, add one with lib.rosDistroOverlay,
    # which puts it at rosPackages.<name>, where cross-compilation splicing
    # looks for it. Callers from when ROS 1 was supported still pass
    # `version = 2`, which is accepted and ignored.
    mkRosDistroOverlay = args:
      assert (args.version or 2) == 2;
      import ./distro-overlay.nix (removeAttrs args [ "version" ]);
    mkRosDistro = args: mkRosDistroOverlay args self super;

    humble = mkRosDistro { distro = "humble"; };
    jazzy = mkRosDistro { distro = "jazzy"; };
    kilted = mkRosDistro { distro = "kilted"; };
    lyrical = mkRosDistro { distro = "lyrical"; };
    rolling = mkRosDistro { distro = "rolling"; };
  };
}
