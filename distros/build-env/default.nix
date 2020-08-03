# Provides a specialized version of buildEnv, designed specifically for ROS
# packages. It is useful when using a large number of ROS packages that would
# otherwise cause ROS_PACKAGE_PATH or other environment variables to become too
# long.
#
# All ROS packages in the 'paths' closure are added to the environment, while
# other packages are propagated. This makes it usable in nix-shell, while
# preventing ROS_PACKAGE_PATH and CMAKE_PREFIX_PATH from becoming too large due
# to a huge number of ROS packages.
#
# By default, all binaries in the environment are wrapped, setting the relevant
# ROS environment variables, allowing use outside of nix-shell.
{ lib, stdenv, buildPackages, writeText, buildEnv, makeWrapper }:
{ paths ? [], wrapPrograms ? true, ... }@args:

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

    buildInputs = optional wrapPrograms makeWrapper;

    postBuild = ''
      "${buildPackages.perl}/bin/perl" "${./setup-hook-builder.pl}"
    '' + optionalString wrapPrograms ''
      if [ -d "$out/bin" ]; then
        find -L "$out/bin" -executable -type f -xtype l -print0 | \
        while IFS= read -r -d "" link; do
          file="$(readlink "$link")"
          rm "$link"
          # Remove unwrapped versions of binaries
          if [[ "$(basename "$link")" == .*-wrapped ]]; then continue; fi

          makeWrapper "$file" "$link" \
            --prefix PATH : "$out/bin" \
            --prefix CMAKE_PREFIX_PATH : "$out" \
            --prefix ROS_PACKAGE_PATH : "$out/share"
        done
      fi
    '';

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

    propagatedBuildInputs = propagatedPaths.otherPackages;

    buildPhase = ''
      runHook preBuild
      . "$oldBuildCommandPath"
      runHook postBuild
    '';
    phases = [ "buildPhase" "fixupPhase" ];
  });
in env
