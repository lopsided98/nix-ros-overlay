
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosgraph, roslaunch, rosmaster, rospy, rosunit }:
buildRosPackage {
  pname = "ros-noetic-rostest";
  version = "1.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rostest/1.17.2-1.tar.gz";
    name = "1.17.2-1.tar.gz";
    sha256 = "324611ab22f3c1a0979829739475c4eaa6c52ac27f22a2368c96366686820d42";
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
