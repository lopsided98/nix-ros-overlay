
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, rclpy, tf-transformations, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-crazyflie";
  version = "2025.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_crazyflie/2025.0.1-1.tar.gz";
    name = "2025.0.1-1.tar.gz";
    sha256 = "ea1fc6d358e4ead1e1da1ad53153861c75aff9e0201fc83a23831cfb3df50808";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy tf-transformations webots-ros2-driver ];

  meta = {
    description = "ROS2 package for Crazyflie webots simulator";
    license = with lib.licenses; [ mit ];
  };
}
