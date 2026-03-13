# Define all supported ROS distros

self: super: {
  rosNixpkgs = {
    humble = self.extend (_: _: { inherit (self.rosPackages.humble) octomap urdfdom urdfdom-headers; });
    jazzy = self.extend (_: _: { inherit (self.rosPackages.jazzy) octomap urdfdom urdfdom-headers; });
    kilted = self.extend (_: _: { inherit (self.rosPackages.kilted) urdfdom urdfdom-headers; });
    rolling = self.extend (_: _: { inherit (self.rosPackages.rolling) urdfdom urdfdom-headers; });
  };
  rosPackages = rec {
    recurseForDerivations = true;
    lib = super.lib // import ../lib { inherit lib self; };

    mkRosDistroOverlay = args: import ./distro-overlay.nix args;

    humble = mkRosDistroOverlay { version = 2; distro = "humble"; } self.rosNixpkgs.humble super;
    jazzy = mkRosDistroOverlay { version = 2; distro = "jazzy"; } self.rosNixpkgs.jazzy super;
    kilted = mkRosDistroOverlay { version = 2; distro = "kilted"; } self.rosNixpkgs.kilted super;
    rolling = mkRosDistroOverlay { version = 2; distro = "rolling"; } self.rosNixpkgs.rolling super;
  };
}
