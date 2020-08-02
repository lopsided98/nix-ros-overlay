{ lib }:
with lib;
rec {
  mergeOverlays = foldr composeExtensions (_: _: {});

  mkOverlay = overlays: let
    self = mergeOverlays overlays self {};
  in self;
}
