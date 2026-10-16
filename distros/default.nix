# Define all supported ROS distros

self: super: {
  rosPackages = rec {
    recurseForDerivations = true;
    lib = super.lib // import ../lib { inherit lib self; };

    # Build a distro scope; see distro-overlay.nix for the arguments. To add
    # one to rosPackages from outside this repo, use lib.rosDistroOverlay,
    # which also puts it where cross-compilation splicing looks for it.
    mkRosDistro = args: import ./distro-overlay.nix args self super;
    mkRosDistroOverlay = args: import ./distro-overlay.nix args;

    humble = mkRosDistro { version = 2; distro = "humble"; };
    jazzy = mkRosDistro { version = 2; distro = "jazzy"; };
    kilted = mkRosDistro { version = 2; distro = "kilted"; };
    lyrical = mkRosDistro { version = 2; distro = "lyrical"; };
    rolling = mkRosDistro { version = 2; distro = "rolling"; };
  };
}
