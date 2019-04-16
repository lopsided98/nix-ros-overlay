{ nixpkgs ? <nixpkgs>, overlays ? [] }@args: import nixpkgs {
  overlays = [ (import ./overlay.nix) ] ++ overlays;
} // args
