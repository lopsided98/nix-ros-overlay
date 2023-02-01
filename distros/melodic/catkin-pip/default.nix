
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-catkin-pip";
  version = "0.2.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pyros-dev";
        repo = "catkin_pip-release";
        rev = "release/melodic/catkin_pip/0.2.3-1";
        sha256 = "sha256-iVgRZSsaLIm6kSZekQ+DJI4+x4DfJ9p9TayNQ1BZJ28=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ git ];
  propagatedBuildInputs = [ python pythonPackages.pip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin macros to allow using pure python packages in usual catkin workspaces with normal python workflow.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
