
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-bringup, turtlebot3-cartographer, turtlebot3-description, turtlebot3-example, turtlebot3-navigation2, turtlebot3-node, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-galactic-turtlebot3";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/galactic/turtlebot3/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "c404e32991ca23fa864d0744d9deb6541030e5d6ef5d657a8ad99ba97f868df5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot3-bringup turtlebot3-cartographer turtlebot3-description turtlebot3-example turtlebot3-navigation2 turtlebot3-node turtlebot3-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 packages for TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
