
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp-tutorials, rospy-tutorials, turtlesim }:
buildRosPackage {
  pname = "ros-noetic-ros-tutorials";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/noetic/ros_tutorials/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "92d93f9ea4efc1554eb310d5c21460727339ddea8586be133b45e59f082c8779";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp-tutorials rospy-tutorials turtlesim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_tutorials contains packages that demonstrate various features of ROS,
    as well as support packages which help demonstrate those features.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
