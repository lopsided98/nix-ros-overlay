
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, rclpy, tf-transformations, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-crazyflie";
  version = "2025.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_crazyflie/2025.0.0-2.tar.gz";
    name = "2025.0.0-2.tar.gz";
    sha256 = "15a57c9c2a62de7975a9069ac35701291c9a77d976ec1117bbd5054b27c42edb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy tf-transformations webots-ros2-driver ];

  meta = {
    description = "ROS2 package for Crazyflie webots simulator";
    license = with lib.licenses; [ mit ];
  };
}
