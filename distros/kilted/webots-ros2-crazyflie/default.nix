
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, rclpy, tf-transformations, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-kilted-webots-ros2-crazyflie";
  version = "2025.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/kilted/webots_ros2_crazyflie/2025.0.1-1.tar.gz";
    name = "2025.0.1-1.tar.gz";
    sha256 = "d073f75b2884b3c8ab675dadaa3f0a0011125646860a4e1e9110a2d5c1e54151";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy tf-transformations webots-ros2-driver ];

  meta = {
    description = "ROS2 package for Crazyflie webots simulator";
    license = with lib.licenses; [ mit ];
  };
}
