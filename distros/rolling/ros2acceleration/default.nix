
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, rclpy, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2acceleration";
  version = "0.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2acceleration-release/archive/release/rolling/ros2acceleration/0.5.1-2.tar.gz";
    name = "0.5.1-2.tar.gz";
    sha256 = "5a1ceac554d991c1823f5e568752c889f240ff4a71b07a3d69ceb4034beca2f0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The acceleration command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
