{ mkShell, nodejs, cachix }:

mkShell {
  name = "nix-ros-build-action-shell";

  packages = [
    nodejs
    cachix
  ];
}
