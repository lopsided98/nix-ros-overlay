# Define all supported ROS distros

self: super: {
  rosPackages = rec {
    kinetic = import ./distro-overlay.nix {
      distro = "kinetic";
      python = self.python2;
    } self super;

    kineticPython3 = import ./distro-overlay.nix {
      distro = "kinetic";
      python = self.python3;
    } self super;

    lunar = import ./distro-overlay.nix {
      distro = "lunar";
      python = self.python2;
    } self super;

    melodic = import ./distro-overlay.nix {
      distro = "melodic";
      python = self.python3;
    } self super;
  };
}
