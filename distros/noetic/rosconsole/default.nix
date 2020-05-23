
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, apr, boost, catkin, cpp-common, log4cxx, rosbuild, rostime, rosunit }:
buildRosPackage {
  pname = "ros-noetic-rosconsole";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosconsole-release/archive/release/noetic/rosconsole/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "6ccd2b982844a8e8ae6f32f1bfc261879e4495af6752c157dea441830a94c971";
  };

  buildType = "catkin";
  buildInputs = [ rosunit ];
  propagatedBuildInputs = [ apr boost cpp-common log4cxx rosbuild rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS console output library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
