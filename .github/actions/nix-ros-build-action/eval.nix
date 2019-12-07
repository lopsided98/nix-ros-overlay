{ lib, pkgs }: let
  validDrv = (n: v: (builtins.tryEval v).success);
  listDrvs = prefix:
in lib.attrNames (lib.filterAttrs validDrv pkgs)
