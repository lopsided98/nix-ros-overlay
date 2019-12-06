{ lib }:
with lib;
rec {
  applyOverlays = self: super: overlays: let
    curSuper = applyOverlays self super (init overlays);
  in if length overlays == 0 then super
     else curSuper // (last overlays) self curSuper;

  mkOverlay = overlays: let
    self = applyOverlays self {} overlays;
  in self;
}
