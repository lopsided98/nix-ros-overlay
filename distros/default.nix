# Define all supported ROS distros

self: super: {
  rosPackages = rec {
    recurseForDerivations = true;
    lib = super.lib // import ../lib { inherit lib self; };

    melodic = import ./distro-overlay.nix {
      distro = "melodic";
      python = self.python2;
    } self super;

    melodicPython3 = import ./distro-overlay.nix {
      distro = "melodic";
      python = self.python3;
    } self super;

    noetic = import ./distro-overlay.nix {
      distro = "noetic";
      python = self.python3;
    } self super;

    foxy = import ./distro-overlay.nix {
      distro = "foxy";
      python = self.python3;
    } self super;

    galactic = import ./distro-overlay.nix {
      distro = "galactic";
      python = self.python3;
    } self super;

    humble = import ./distro-overlay.nix {
      distro = "humble";
      python = self.python3;
    } self super;
  };
}
