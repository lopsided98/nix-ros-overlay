
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, apr, boost, catkin, cpp-common, log4cxx, rosbuild, rostime, rosunit }:
buildRosPackage {
  pname = "ros-melodic-rosconsole";
  version = "1.13.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosconsole-release/archive/release/melodic/rosconsole/1.13.18-1.tar.gz";
    name = "1.13.18-1.tar.gz";
    sha256 = "9b544ea97f1e97680d2474a4cedb3c9c2a0b19c3ad70f5d11fd7c886bd4fe4c0";
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
