
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, controller-manager, diff-drive-controller, geometry-msgs, joint-state-broadcaster, python3Packages, rclpy, robot-state-publisher, rviz2, tf2-ros, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-lyrical-webots-ros2-tiago";
  version = "2025.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/lyrical/webots_ros2_tiago/2025.0.1-3.tar.gz";
    name = "2025.0.1-3.tar.gz";
    sha256 = "7b56786115d6f190b7eb3720d8235da626be1dd49e155fd012b725c491324188";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller geometry-msgs joint-state-broadcaster rclpy robot-state-publisher rviz2 tf2-ros webots-ros2-control webots-ros2-driver ];

  meta = {
    description = "TIAGo robots ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
