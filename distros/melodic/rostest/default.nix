
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosgraph, roslaunch, rosmaster, rospy, rosunit }:
buildRosPackage {
  pname = "ros-melodic-rostest";
  version = "1.14.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rostest/1.14.13-1.tar.gz";
    name = "1.14.13-1.tar.gz";
    sha256 = "ebcec8f57379b442df3c1f876b410b8efc0f8d37f7282e93adeb5af435cd3ee3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost rosgraph roslaunch rosmaster rospy rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration test suite based on roslaunch that is compatible with xUnit frameworks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
