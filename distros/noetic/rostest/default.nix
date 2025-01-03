
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosgraph, roslaunch, rosmaster, rospy, rosunit }:
buildRosPackage {
  pname = "ros-noetic-rostest";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rostest/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "9f5527c6aac448f6c8ef02ff2c542216c8624f5d3adac9fccad528472703f697";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost rosgraph roslaunch rosmaster rospy rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Integration test suite based on roslaunch that is compatible with xUnit frameworks.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
