
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, webots-ros2-core }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-turtlebot";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_turtlebot/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "4ed042e036a03cbe48eae9645ce2e8822c0c1d1b691a6152494d23a903782dcf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy webots-ros2-core ];

  meta = {
    description = ''TurtleBot3 Burger robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
