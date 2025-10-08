# Define all supported ROS distros

self: super: {
  rosPackages = rec {
    recurseForDerivations = true;
    lib = super.lib // import ../lib { inherit lib self; };

    mkRosDistroOverlay = args: import ./distro-overlay.nix args;

    humble = mkRosDistroOverlay { version = 2; distro = "humble"; } self super;
    jazzy = mkRosDistroOverlay { version = 2; distro = "jazzy"; } self super;
    kilted = mkRosDistroOverlay { version = 2; distro = "kilted"; } self super;
    rolling = mkRosDistroOverlay { version = 2; distro = "rolling"; } self super;
  };
}
