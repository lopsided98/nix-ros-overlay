{ nixpkgs ? <nixpkgs>, nix-ros-overlay ? ./., distro ? null }:
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
