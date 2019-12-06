self: super:
with import ./lib/mk-overlay.nix { inherit (super) lib; };
applyOverlays self super [
  (import ./base.nix)
  (import ./distros.nix)
]
