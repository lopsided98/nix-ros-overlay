
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, controller-manager, diff-drive-controller, geometry-msgs, joint-state-broadcaster, python3Packages, rclpy, robot-state-publisher, rviz2, tf2-ros, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-kilted-webots-ros2-tiago";
  version = "2025.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/kilted/webots_ros2_tiago/2025.0.0-2.tar.gz";
    name = "2025.0.0-2.tar.gz";
    sha256 = "7e1e2aa2544a5d8fd1923c384493af82c228b63f88cbb08535cbaeb5cbc3cfaf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller geometry-msgs joint-state-broadcaster rclpy robot-state-publisher rviz2 tf2-ros webots-ros2-control webots-ros2-driver ];

  meta = {
    description = "TIAGo robots ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
