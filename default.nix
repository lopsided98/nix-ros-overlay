let
  lock = builtins.fromJSON (builtins.readFile ./flake.lock);
  lockedNixpkgs = builtins.fetchTarball {
    url = "https://github.com/lopsided98/nixpkgs/archive/${lock.nodes.nixpkgs.locked.rev}.tar.gz";
    sha256 = lock.nodes.nixpkgs.locked.narHash;
  };
in
{ nixpkgs ? lockedNixpkgs
, overlays ? []
, ... }@args:

import nixpkgs (args // {
  overlays = [ (import ./overlay.nix) ] ++ overlays;
})
