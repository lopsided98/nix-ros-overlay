#!/usr/bin/env nix-shell
#! nix-shell -i bash --pure
#! nix-shell -p jq nix nix-update cacert git

# Usage: update-colcon.sh [nix-update options]

set -euo pipefail

nix eval --json --impure --expr '
let
  pkgs = (import ./. {});
  lib = pkgs.lib;
  colconPkgs = lib.filterAttrs (n: v: builtins.substring 0 7 n == "colcon-" && lib.hasPrefix "'"$PWD"'" v.meta.position ) pkgs.python3Packages;
in
   lib.attrNames colconPkgs' \
    | jq  --raw-output '.[]' \
    | while read pkg; do nix-update "$@" python3Packages."$pkg"; done
