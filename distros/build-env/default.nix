{ lib, stdenv, buildPackages, writeText, buildEnv, catkin }:
{ paths ? [], ... }@args:

with lib;

let
  propagatePackages = packages: let
    validPackages = filter (d: d != null) packages;
    partitionedPackages = partition (d: d.rosPackage or false) validPackages;
    rosPackages = partitionedPackages.right;
    otherPackages = partitionedPackages.wrong;
    rosPropagatedPackages = unique (concatLists (catAttrs "propagatedBuildInputs" rosPackages));
    recurse = propagatePackages rosPropagatedPackages;
  in if length validPackages == 0 then {
      rosPackages = [];
      otherPackages = [];
    } else {
      rosPackages = unique (rosPackages ++ recurse.rosPackages);
      otherPackages = unique (otherPackages ++ recurse.otherPackages);
    };

  propagatedPaths = propagatePackages paths;

  env = (buildEnv (args // {
    name = "ros-env";
    # Only add ROS packages to environment. The rest are propagated like normal.
    # ROS packages propagate a huge number of dependencies, which are added all
    # added to the environment with nix-shell -p, but would not normally not be
    # added with buildEnv. This file adds all specified ROS packages and their
    # ROS dependencies to the environment, while propagating other packages like
    # nix-shell -p does.
    paths = propagatedPaths.rosPackages;

    passthru.env = stdenv.mkDerivation {
      name = "interactive-ros-env";

      buildInputs = [ env ];

      buildCommand = ''
        echo >&2 ""
        echo >&2 "*** ROS 'env' attributes are intended for interactive nix-shell sessions, not for building! ***"
        echo >&2 ""
        exit 1
      '';
    };
  })).overrideAttrs ({ buildCommand, passAsFile ? [], ...}: {
    # Hack to allow buildEnv to use propagatedBuildInputs
    buildCommand = null;
    oldBuildCommand = buildCommand;
    passAsFile = (if passAsFile == null then [] else passAsFile) ++ [ "oldBuildCommand" ];

    # catkin always needs to be propagated for its 
    propagatedBuildInputs = propagatedPaths.otherPackages;

    buildPhase = ''
      runHook preBuild
      . "$oldBuildCommandPath"
      "${buildPackages.perl}/bin/perl" "${./setup-hook-builder.pl}"
      runHook postBuild
    '';
    phases = [ "buildPhase" "fixupPhase" ];
  });
in env
