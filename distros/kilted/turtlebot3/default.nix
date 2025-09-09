
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-bringup, turtlebot3-cartographer, turtlebot3-description, turtlebot3-example, turtlebot3-navigation2, turtlebot3-node, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-kilted-turtlebot3";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/kilted/turtlebot3/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "e289977fc6c23a2cb7a6256b2e519e88109ef0c04fde39415ba5062f1ba7a886";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot3-bringup turtlebot3-cartographer turtlebot3-description turtlebot3-example turtlebot3-navigation2 turtlebot3-node turtlebot3-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 packages for TurtleBot3";
    license = with lib.licenses; [ asl20 ];
  };
}
