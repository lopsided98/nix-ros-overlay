let
  lock = builtins.fromJSON (builtins.readFile ./flake.lock);
  lockedNixpkgs = builtins.fetchTarball {
    url = "https://github.com/lopsided98/nixpkgs/archive/${lock.nodes.nixpkgs.locked.rev}.tar.gz";
    sha256 = lock.nodes.nixpkgs.locked.narHash;
  };
in
{
  nixpkgs ? lockedNixpkgs,
  nix-ros-overlay ? ./.,
  distro ? null, # what to build: null = everything, .* = top or examples, anything else = specific ROS distro
  system ? builtins.currentSystem,
}:
let
  pkgs = import nix-ros-overlay { inherit nixpkgs system; };
  inherit (pkgs.lib) isDerivation filterAttrs;
  inherit (builtins) mapAttrs attrNames filter listToAttrs readDir;
  cleanupDistro = (_: a: removeAttrs a [
    "lib"
    "python"
    "python3"
    "python2"
    "pythonPackages"
    "python2Packages"
    "python3Packages"
    "boost"
  ]);
  releaseRosPackages = mapAttrs cleanupDistro pkgs.rosPackages;
  overlayAttrNames = attrNames ((import ./overlay.nix) null pkgs);
  toplevelPackagesEntries =
    map (name: { inherit name; value = pkgs.${name} or null; })
      overlayAttrNames;
  validToplevelPackageEntries = filter (e: isDerivation e.value)
    toplevelPackagesEntries;
  toplevelPackages = listToAttrs validToplevelPackageEntries;
  releasePackages = toplevelPackages // {
    rosPackages = removeAttrs releaseRosPackages [
      "lib"
      "mkRosDistroOverlay"
      "foxy" # No CI for EOL distro
    ];
    examples = mapAttrs
      (file: _: import (./examples + "/${file}") { inherit pkgs; })
      (filterAttrs (n: v: v == "regular")
        (readDir ./examples));
  };
in
if distro == ".top" then toplevelPackages
else if distro == ".examples" then releasePackages.examples
else if distro == null then releasePackages
else releasePackages.rosPackages.${distro}
