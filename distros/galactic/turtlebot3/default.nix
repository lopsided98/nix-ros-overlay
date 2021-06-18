
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-bringup, turtlebot3-cartographer, turtlebot3-description, turtlebot3-example, turtlebot3-navigation2, turtlebot3-node, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-galactic-turtlebot3";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/galactic/turtlebot3/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "2ddd3beb8cefdca04b4479ca4cbc860d187e677e32da3408bc2734ab43ceb779";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ turtlebot3-bringup turtlebot3-cartographer turtlebot3-description turtlebot3-example turtlebot3-navigation2 turtlebot3-node turtlebot3-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 packages for TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
