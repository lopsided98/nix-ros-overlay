self: super:
with import ./lib/mk-overlay.nix { inherit (super) lib; };
mergeOverlays [
  (import ./pkgs)
  (import ./distros)
] self super
