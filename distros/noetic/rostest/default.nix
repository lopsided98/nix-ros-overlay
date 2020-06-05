
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosgraph, roslaunch, rosmaster, rospy, rosunit }:
buildRosPackage {
  pname = "ros-noetic-rostest";
  version = "1.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rostest/1.15.7-1.tar.gz";
    name = "1.15.7-1.tar.gz";
    sha256 = "060d801dbaabaca8ec8c27222796cd5be6924a7f1d77e6f7e0f68a84397a802e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost rosgraph roslaunch rosmaster rospy rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration test suite based on roslaunch that is compatible with xUnit frameworks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
