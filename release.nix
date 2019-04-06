{ nixpkgs ? <nixpkgs>, nix-ros-overlay ? ./., distro }:

(import nix-ros-overlay { inherit nixpkgs; }).rosPackages."${distro}"
