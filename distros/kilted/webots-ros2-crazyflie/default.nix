
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, rclpy, tf-transformations, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-kilted-webots-ros2-crazyflie";
  version = "2025.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/kilted/webots_ros2_crazyflie/2025.0.0-2.tar.gz";
    name = "2025.0.0-2.tar.gz";
    sha256 = "8f2f1f25ec1560567aeca8d4c11045be2327ef832972216cde80fcf0ec21d2d3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy tf-transformations webots-ros2-driver ];

  meta = {
    description = "ROS2 package for Crazyflie webots simulator";
    license = with lib.licenses; [ mit ];
  };
}
