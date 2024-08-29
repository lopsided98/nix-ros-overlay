# Define all supported ROS distros

self: super: {
  rosPackages = rec {
    recurseForDerivations = true;
    lib = super.lib // import ../lib { inherit lib self; };

    mkRosDistroOverlay = args: import ./distro-overlay.nix args;

    noetic = mkRosDistroOverlay { version = 1; distro = "noetic"; } self super;
    foxy = mkRosDistroOverlay { version = 2; distro = "foxy"; } self super;
    humble = mkRosDistroOverlay { version = 2; distro = "humble"; } self super;
    iron = mkRosDistroOverlay { version = 2; distro = "iron"; } self super;
    jazzy = mkRosDistroOverlay { version = 2; distro = "jazzy"; } self super;
    rolling = mkRosDistroOverlay { version = 2; distro = "rolling"; } self super;
  };
}
