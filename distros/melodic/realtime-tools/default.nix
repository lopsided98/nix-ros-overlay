
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-realtime-tools";
  version = "1.15.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "realtime_tools-release";
        rev = "release/melodic/realtime_tools/1.15.1-1";
        sha256 = "sha256-GtLhDRuH2C0t/aYseBkrs/M2RjklknwAfV78M8y40YM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ actionlib rostest rosunit ];
  propagatedBuildInputs = [ actionlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
