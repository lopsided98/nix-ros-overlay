
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2acceleration";
  version = "0.5.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2acceleration-release/archive/release/jazzy/ros2acceleration/0.5.1-4.tar.gz";
    name = "0.5.1-4.tar.gz";
    sha256 = "b479e1d7e6368920203cff29b78ba0165df6165c9abad9e1f55a87d4c56dc5c6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = "The acceleration command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
