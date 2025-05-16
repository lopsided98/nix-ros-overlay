
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosgraph, roslaunch, rosmaster, rospy, rosunit }:
buildRosPackage {
  pname = "ros-noetic-rostest";
  version = "1.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rostest/1.17.3-1.tar.gz";
    name = "1.17.3-1.tar.gz";
    sha256 = "b86bb0afa9d291ed24ec122d838fb2d4db39a0396f1a94a3d593f31ef52312bd";
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
