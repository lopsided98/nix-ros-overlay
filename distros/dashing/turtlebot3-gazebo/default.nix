
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros-pkgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, tf2, turtlebot3 }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-gazebo";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/dashing/turtlebot3_gazebo/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "f9d883c497b96843ec4d4b12db694ff062a5817c3703cdcfd5156b99d72bec5f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-ros-pkgs geometry-msgs nav-msgs rclcpp sensor-msgs tf2 turtlebot3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
