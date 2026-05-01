
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-copyright, builtin-interfaces, python3Packages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-lyrical-webots-ros2-tesla";
  version = "2025.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/lyrical/webots_ros2_tesla/2025.0.1-3.tar.gz";
    name = "2025.0.1-3.tar.gz";
    sha256 = "55ab87784bb5c37f1c2af193a7e2af2a306b75ed19d8747252667f1c1f751a29";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ ackermann-msgs builtin-interfaces python3Packages.numpy python3Packages.opencv4 rclpy webots-ros2-driver ];

  meta = {
    description = "Tesla ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
