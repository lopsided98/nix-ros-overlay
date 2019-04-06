{ lib, stdenv, buildEnv, catkin, cmake }:
{ paths ? [], ... }@args:

with lib;

let
  propagatePackages = drvs: let
    validDrvs = filter (d: d != null) drvs;
  in if length validDrvs == 0 then []
    else unique (validDrvs ++ (propagatePackages (unique (concatLists (catAttrs "propagatedBuildInputs" validDrvs)))));

  env = buildEnv (args // {
    name = "ros-env";
    paths = propagatePackages paths;
    ignoreCollisions = true;

    passthru.env = stdenv.mkDerivation {
      name = "interactive-ros-env";
      nativeBuildInputs = [ catkin cmake ];
      buildInputs = [ env ];

      buildCommand = ''
        echo >&2 ""
        echo >&2 "*** ROS 'env' attributes are intended for interactive nix-shell sessions, not for building! ***"
        echo >&2 ""
        exit 1
      '';
    };
  });
in env
