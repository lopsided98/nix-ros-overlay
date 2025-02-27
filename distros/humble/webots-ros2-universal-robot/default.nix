
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, control-msgs, controller-manager, joint-state-broadcaster, joint-trajectory-controller, python3Packages, rclpy, robot-state-publisher, rviz2, trajectory-msgs, webots-ros2-control, webots-ros2-driver, xacro }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-universal-robot";
  version = "2025.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_universal_robot/2025.0.0-2.tar.gz";
    name = "2025.0.0-2.tar.gz";
    sha256 = "5a61db6c514cbc158efa7fd562e14535f1e0b95332b7dad517b2dd8270e953ba";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs controller-manager joint-state-broadcaster joint-trajectory-controller rclpy robot-state-publisher rviz2 trajectory-msgs webots-ros2-control webots-ros2-driver xacro ];

  meta = {
    description = "Universal Robot ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
