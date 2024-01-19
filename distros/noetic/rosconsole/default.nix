
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, apr, boost, catkin, cpp-common, log4cxx, rosbuild, rostime, rosunit }:
buildRosPackage {
  pname = "ros-noetic-rosconsole";
  version = "1.14.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosconsole-release/archive/release/noetic/rosconsole/1.14.3-1.tar.gz";
    name = "1.14.3-1.tar.gz";
    sha256 = "8b0e2f4ebe5f8ca194b7a5ced20ff304746c6041800b891ae88f9a76a898a0eb";
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
