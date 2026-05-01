
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, rclpy, tf-transformations, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-lyrical-webots-ros2-crazyflie";
  version = "2025.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/lyrical/webots_ros2_crazyflie/2025.0.1-3.tar.gz";
    name = "2025.0.1-3.tar.gz";
    sha256 = "575ddec5c018550ffba0863bbf6e5a068d51212e7bcd1cd76c8f21cbf461180d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy tf-transformations webots-ros2-driver ];

  meta = {
    description = "ROS2 package for Crazyflie webots simulator";
    license = with lib.licenses; [ mit ];
  };
}
