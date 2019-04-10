self: super: {
  rosPackages = rec {
    kinetic = import ./mk-distro-overlay.nix {
      distro = "kinetic";
      python = self.python2;
    } self super;

    kineticPython3 = import ./mk-distro-overlay.nix {
      distro = "kinetic";
      python = self.python3;
    } self super;

    lunar = import ./mk-distro-overlay.nix {
      distro = "lunar";
      python = self.python2;
    } self super;

    melodic = import ./mk-distro-overlay.nix {
      distro = "melodic";
      python = self.python3;
    } self super;
  };
}
