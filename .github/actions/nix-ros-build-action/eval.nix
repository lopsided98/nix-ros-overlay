# Evaluate `release.nix' like Hydra would. Too bad nix-instantiate can't to do this.
{ lib ? pkgs.lib, pkgs }:

let
  trace = if builtins.getEnv "VERBOSE" == "1" then builtins.trace else (x: y: y);

  # Add the ‘recurseForDerivations’ attribute to ensure that
  # nix-instantiate recurses into nested attribute sets.
  recurse = path: attrs:
    if (builtins.tryEval attrs).success then
      if lib.isDerivation attrs
      then
        if (builtins.tryEval attrs.drvPath).success
        then { inherit (attrs) name drvPath; }
        else { failed = true; }
      else if lib.isAttrs attrs && (attrs.recurseForDerivations or false) then
        { recurseForDerivations = true; } //
           lib.mapAttrs (n: v: let path' = path ++ [n]; in trace path' (recurse path' v)) attrs
      else { }
    else { };

in recurse [] pkgs
