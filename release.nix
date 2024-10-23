let
  lock = builtins.fromJSON (builtins.readFile ./flake.lock);
  lockedNixpkgs = builtins.fetchTarball {
    url = "https://github.com/lopsided98/nixpkgs/archive/${lock.nodes.nixpkgs.locked.rev}.tar.gz";
    sha256 = lock.nodes.nixpkgs.locked.narHash;
  };
in
{ nixpkgs ? lockedNixpkgs, nix-ros-overlay ? ./., distro ? null, system ? builtins.currentSystem }:
let
  rosPackages = (import nix-ros-overlay { inherit nixpkgs system; }).rosPackages;
  releaseDistros = builtins.mapAttrs (_: a: removeAttrs a [
    "lib"
    "python"
    "python3"
    "python2"
    "pythonPackages"
    "python2Packages"
    "python3Packages"
    "boost"
  ]) rosPackages;
  releasePackages = removeAttrs releaseDistros [
    "lib"
    "mkRosDistroOverlay"
  ];
in if distro == null then releasePackages else releasePackages.${distro}
