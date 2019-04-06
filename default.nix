{ nixpkgs ? <nixpkgs>, overlays ? [] }@args: import nixpkgs {
  overlays = [
    (import ./base.nix)
    (import ./overlay.nix)
  ] ++ overlays;
} // args
