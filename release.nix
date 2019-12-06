{ nixpkgs ? <nixpkgs>, nix-ros-overlay ? ./., distro }:

removeAttrs (import nix-ros-overlay { inherit nixpkgs; }).rosPackages."${distro}" [
  "lib"
  "python"
  "python3"
  "python2"
  "pythonPackages"
  "python2Packages"
  "python3Packages"
  "boost"
]
