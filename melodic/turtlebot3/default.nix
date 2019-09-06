
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot3-navigation, catkin, turtlebot3-description, turtlebot3-slam, turtlebot3-bringup, turtlebot3-example, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "74e13982b319116e6b0ae5bebc8e9a37b816e5e10d2335876320fa1178d2131f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ turtlebot3-navigation turtlebot3-slam turtlebot3-description turtlebot3-bringup turtlebot3-example turtlebot3-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the Turtlebot3 (meta package)'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
