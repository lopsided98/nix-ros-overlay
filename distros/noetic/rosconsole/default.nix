
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, apr, boost, catkin, cpp-common, log4cxx, rosbuild, rostime, rosunit }:
buildRosPackage {
  pname = "ros-noetic-rosconsole";
  version = "1.14.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rosconsole-release";
        rev = "release/noetic/rosconsole/1.14.3-1";
        sha256 = "sha256-8d4OczeGu7/mtgPi8/09mjV8kvvj9bdlidF5wOqpewM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rosunit ];
  propagatedBuildInputs = [ apr boost cpp-common log4cxx rosbuild rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS console output library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
