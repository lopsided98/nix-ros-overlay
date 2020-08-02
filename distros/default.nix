# Define all supported ROS distros

self: super: {
  rosPackages = rec {
    lib = super.lib // import ../lib { inherit lib self; };

    kinetic = import ./distro-overlay.nix {
      distro = "kinetic";
      python = self.python2;
    } self super;

    kineticPython3 = import ./distro-overlay.nix {
      distro = "kinetic";
      python = self.python3;
    } self super;

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

    dashing = import ./distro-overlay.nix {
      distro = "dashing";
      python = self.python3;
    } self super;

    eloquent = import ./distro-overlay.nix {
      distro = "eloquent";
      python = self.python3;
    } self super;

    foxy = import ./distro-overlay.nix {
      distro = "foxy";
      python = self.python3;
    } self super;
  };
}
