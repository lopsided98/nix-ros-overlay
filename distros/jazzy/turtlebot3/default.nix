
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-bringup, turtlebot3-cartographer, turtlebot3-description, turtlebot3-example, turtlebot3-navigation2, turtlebot3-node, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "b3c4f1752a9d52f0da7ca5e624b4ef55f65843f238266c6de951eb72edf85056";
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
