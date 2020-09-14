
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosgraph, roslaunch, rosmaster, rospy, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-rostest";
  version = "1.12.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rostest/1.12.16-1.tar.gz";
    name = "1.12.16-1.tar.gz";
    sha256 = "5c1ca6cd4f8be7d98b2ae2cea4d097c4a9c4f6b6ddc1a9162bb767b14f6a3e88";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost rosgraph roslaunch rosmaster rospy rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration test suite based on roslaunch that is compatible with xUnit frameworks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
