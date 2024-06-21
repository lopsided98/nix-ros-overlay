
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, controller-manager, diff-drive-controller, geometry-msgs, joint-state-broadcaster, pythonPackages, rclpy, robot-state-publisher, rviz2, tf2-ros, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-jazzy-webots-ros2-tiago";
  version = "2023.1.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/jazzy/webots_ros2_tiago/2023.1.2-4.tar.gz";
    name = "2023.1.2-4.tar.gz";
    sha256 = "8e050ec5f16e9c6bdb00cab895c3dfcb3d6f8216e3ac6a147aa099195a16f1c3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller geometry-msgs joint-state-broadcaster rclpy robot-state-publisher rviz2 tf2-ros webots-ros2-control webots-ros2-driver ];

  meta = {
    description = "TIAGo robots ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
