
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot3-navigation, catkin, turtlebot3-slam, turtlebot3-description, turtlebot3-bringup, turtlebot3-example, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3/1.2.0-0.tar.gz;
    sha256 = "23438fd64c4ee71227d220b36c16417b6701e290d627cdcbebce95098ea8ea79";
  };

  propagatedBuildInputs = [ turtlebot3-slam turtlebot3-bringup turtlebot3-example turtlebot3-teleop turtlebot3-navigation turtlebot3-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the Turtlebot3 (meta package)'';
    #license = lib.licenses.Apache 2.0;
  };
}
