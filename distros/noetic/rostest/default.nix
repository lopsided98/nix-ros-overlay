
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosgraph, roslaunch, rosmaster, rospy, rosunit }:
buildRosPackage {
  pname = "ros-noetic-rostest";
  version = "1.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rostest/1.17.4-1.tar.gz";
    name = "1.17.4-1.tar.gz";
    sha256 = "226939a698209e58c9badb001fb40886d332099c9888280ca2286ce7360f7088";
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
