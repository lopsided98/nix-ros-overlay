
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, rclpy, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2acceleration";
  version = "0.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2acceleration-release/archive/release/humble/ros2acceleration/0.5.1-2.tar.gz";
    name = "0.5.1-2.tar.gz";
    sha256 = "75736334d2e7154d509ba6b39cd4bf785928d36799a678de6921e61b5365fa45";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The acceleration command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
