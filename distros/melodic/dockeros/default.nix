
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rostest }:
buildRosPackage {
  pname = "ros-melodic-dockeros";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ct2034";
        repo = "dockeros-release";
        rev = "release/melodic/dockeros/1.1.0-1";
        sha256 = "sha256-IYlgDWUE3f+cVo9D61AQmcwLtD1gaUjwWf/YduCyi+A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pythonPackages.docker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simply running ros nodes in docker containers on remote robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
