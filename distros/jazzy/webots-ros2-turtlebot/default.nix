
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, controller-manager, diff-drive-controller, joint-state-broadcaster, python3Packages, rclpy, robot-state-publisher, rviz2, tf2-ros, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-jazzy-webots-ros2-turtlebot";
  version = "2025.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/jazzy/webots_ros2_turtlebot/2025.0.0-1.tar.gz";
    name = "2025.0.0-1.tar.gz";
    sha256 = "12b19e4c8303cabcee5c93d781740d80daaf7649817425138bf4f63f9813ec5b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller joint-state-broadcaster rclpy robot-state-publisher rviz2 tf2-ros webots-ros2-control webots-ros2-driver ];

  meta = {
    description = "TurtleBot3 Burger robot ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
