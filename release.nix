let
  lock = builtins.fromJSON (builtins.readFile ./flake.lock);
  lockedNixpkgs = builtins.fetchTarball {
    url = "https://github.com/lopsided98/nixpkgs/archive/${lock.nodes.nixpkgs.locked.rev}.tar.gz";
    sha256 = lock.nodes.nixpkgs.locked.narHash;
  };
in
{ nixpkgs ? lockedNixpkgs, nix-ros-overlay ? ./., distro ? null }:
with import (nixpkgs + /lib);
let
  releasePackages = mapAttrs (_: a: removeAttrs a [
    "lib"
    "python"
    "python3"
    "python2"
    "pythonPackages"
    "python2Packages"
    "python3Packages"
    "boost"
  ]) (import nix-ros-overlay { inherit nixpkgs; }).rosPackages;
in if distro == null then releasePackages else releasePackages.${distro}
