
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-kilted-ros2acceleration";
  version = "0.5.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2acceleration-release/archive/release/kilted/ros2acceleration/0.5.1-4.tar.gz";
    name = "0.5.1-4.tar.gz";
    sha256 = "1e8f0f91a4af8e3c810b1da6d94d06e79a3873998144f95007f0b54d05827c60";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = "The acceleration command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
