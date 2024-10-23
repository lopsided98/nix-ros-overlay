let
  lock = builtins.fromJSON (builtins.readFile ./flake.lock);
  lockedNixpkgs = builtins.fetchTarball {
    url = "https://github.com/lopsided98/nixpkgs/archive/${lock.nodes.nixpkgs.locked.rev}.tar.gz";
    sha256 = lock.nodes.nixpkgs.locked.narHash;
  };
in
{ nixpkgs ? lockedNixpkgs, nix-ros-overlay ? ./., distro ? null, system ? builtins.currentSystem }:
let
  pkgs = import nix-ros-overlay { inherit nixpkgs system; };
  releaseDistros = builtins.mapAttrs (_: a: removeAttrs a [
    "lib"
    "python"
    "python3"
    "python2"
    "pythonPackages"
    "python2Packages"
    "python3Packages"
    "boost"
  ]) pkgs.rosPackages;
  toplevelPackages = (pkgs.lib.intersectAttrs ((import ./overlay.nix) null pkgs) pkgs);
  releasePackages = toplevelPackages // {
    rosPackages = removeAttrs releaseDistros [
      "lib"
      "mkRosDistroOverlay"
      "foxy" # No CI for EOL distro
    ];
  };
in if distro == null then releasePackages else releasePackages.rosPackages.${distro}
