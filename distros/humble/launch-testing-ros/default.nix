
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-ros, launch-testing, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-launch-testing-ros";
  version = "0.19.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/humble/launch_testing_ros/0.19.10-1.tar.gz";
    name = "0.19.10-1.tar.gz";
    sha256 = "0ec1a6b4bf6ff53f6b2613bafa046010a9484ed7f65105cbef9c2c3707566c31";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest std-msgs ];
  propagatedBuildInputs = [ launch-ros launch-testing rclpy ];

  meta = {
    description = "A package providing utilities for writing ROS2 enabled launch tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
