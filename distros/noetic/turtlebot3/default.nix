
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-bringup, turtlebot3-description, turtlebot3-example, turtlebot3-navigation, turtlebot3-slam, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/noetic/turtlebot3/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "a5a93bf3e6c1f8b05519a164d34fddd9ba63d84b4654c539274ba92a1605f9f7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ turtlebot3-bringup turtlebot3-description turtlebot3-example turtlebot3-navigation turtlebot3-slam turtlebot3-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the Turtlebot3 (meta package)'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
