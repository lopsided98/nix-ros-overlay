
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosgraph, roslaunch, rosmaster, rospy, rosunit }:
buildRosPackage {
  pname = "ros-noetic-rostest";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rostest/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "62834a02e033a07d7eefb8f19c83e08d7d4fe353056165594904123ec77c655e";
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
