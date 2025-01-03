
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, controller-manager, diff-drive-controller, joint-state-broadcaster, python3Packages, rclpy, robot-state-publisher, rviz2, tf2-ros, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-jazzy-webots-ros2-turtlebot";
  version = "2023.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/jazzy/webots_ros2_turtlebot/2023.1.3-1.tar.gz";
    name = "2023.1.3-1.tar.gz";
    sha256 = "02690b6c535a32c41fbaebb4219cb15e8d12afb6479ecdec4befc630ad9f2514";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller joint-state-broadcaster rclpy robot-state-publisher rviz2 tf2-ros webots-ros2-control webots-ros2-driver ];

  meta = {
    description = "TurtleBot3 Burger robot ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
