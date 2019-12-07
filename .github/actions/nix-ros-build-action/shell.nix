{ pkgs ? import <nixpkgs> {} }: with pkgs;

mkShell {
  buildInputs = [ nodejs-12_x cachix ];
}
