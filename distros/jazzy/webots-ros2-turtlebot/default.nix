
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, controller-manager, diff-drive-controller, joint-state-broadcaster, pythonPackages, rclpy, robot-state-publisher, rviz2, tf2-ros, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-jazzy-webots-ros2-turtlebot";
  version = "2023.1.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/jazzy/webots_ros2_turtlebot/2023.1.2-4.tar.gz";
    name = "2023.1.2-4.tar.gz";
    sha256 = "2016d63a8cfa57e1f74cdb55533be820e828408c7cafe32686476f8f29871160";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller joint-state-broadcaster rclpy robot-state-publisher rviz2 tf2-ros webots-ros2-control webots-ros2-driver ];

  meta = {
    description = "TurtleBot3 Burger robot ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
