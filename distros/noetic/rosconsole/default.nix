
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, apr, boost, catkin, cpp-common, log4cxx, rosbuild, rostime, rosunit }:
buildRosPackage {
  pname = "ros-noetic-rosconsole";
  version = "1.14.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosconsole-release/archive/release/noetic/rosconsole/1.14.4-1.tar.gz";
    name = "1.14.4-1.tar.gz";
    sha256 = "717f7668b34e1e7cdd017b7a8474623c6b54ed33739ed8763ec8acd041d7c437";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosunit ];
  propagatedBuildInputs = [ apr boost cpp-common log4cxx rosbuild rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS console output library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
