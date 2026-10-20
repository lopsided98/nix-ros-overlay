# Define all supported ROS distros

self: super: {
  rosPackages = rec {
    recurseForDerivations = true;
    lib = super.lib // import ../lib { inherit lib self; };

    # A distro's package set as a scope; see distro-overlay.nix for the
    # arguments. From outside this repo, add one with lib.rosDistroOverlay,
    # which puts it at rosPackages.<name>, where cross-compilation splicing
    # looks for it.
    mkRosDistroOverlay = args: import ./distro-overlay.nix args;
    mkRosDistro = args: mkRosDistroOverlay args self super;

    humble = mkRosDistro { version = 2; distro = "humble"; };
    jazzy = mkRosDistro { version = 2; distro = "jazzy"; };
    kilted = mkRosDistro { version = 2; distro = "kilted"; };
    lyrical = mkRosDistro { version = 2; distro = "lyrical"; };
    rolling = mkRosDistro { version = 2; distro = "rolling"; };
  };
}
