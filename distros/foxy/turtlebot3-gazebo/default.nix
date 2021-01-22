
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros-pkgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, tf2, turtlebot3 }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-gazebo";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/foxy/turtlebot3_gazebo/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "027bf83d55c83aa72352917cbd04393fd5f5cdbe805dcfa887a9c8a9c11fd0aa";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-ros-pkgs geometry-msgs nav-msgs rclcpp sensor-msgs tf2 turtlebot3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
