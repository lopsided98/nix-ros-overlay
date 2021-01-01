
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-bringup, turtlebot3-description, turtlebot3-example, turtlebot3-navigation, turtlebot3-slam, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "60965a71da79d657a11ab9354af51e0d3923b6bd3310fa5d68a20d76a9ca507f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ turtlebot3-bringup turtlebot3-description turtlebot3-example turtlebot3-navigation turtlebot3-slam turtlebot3-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the Turtlebot3 (meta package)'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
