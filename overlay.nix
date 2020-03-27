self: super:
with import ./lib/mk-overlay.nix { inherit (super) lib; };
applyOverlays self super [
  (import ./pkgs)
  (import ./distros)
]
