# Define all supported ROS distros

self: super: {
  rosPackages = rec {
    recurseForDerivations = true;
    lib = super.lib // import ../lib { inherit lib self; };

    melodicPython3 = import ./distro-overlay.nix {
      version = 1;
      distro = "melodic";
      python = self.python3;
    } self super;

    noetic = import ./distro-overlay.nix {
      version = 1;
      distro = "noetic";
      python = self.python3;
    } self super;

    foxy = import ./distro-overlay.nix {
      version = 2;
      distro = "foxy";
      python = self.python3;
    } self super;

    galactic = import ./distro-overlay.nix {
      version = 2;
      distro = "galactic";
      python = self.python3;
    } self super;

    humble = import ./distro-overlay.nix {
      version = 2;
      distro = "humble";
      python = self.python3;
    } self super;

    rolling = import ./distro-overlay.nix {
      version = 2;
      distro = "rolling";
      python = self.python3;
    } self super;
  };
}
