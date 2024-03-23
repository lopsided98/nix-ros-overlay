
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rclpy, ros2cli, rosgraph-msgs, rosidl-runtime-py, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-iron-ros2topic";
  version = "0.25.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/iron/ros2topic/0.25.5-1.tar.gz";
    name = "0.25.5-1.tar.gz";
    sha256 = "0bcac5f88355d6a4ca3fde0da7576c60cb9780c0920eb85a98c2a9e1187c1118";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint geometry-msgs launch launch-ros launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest rosgraph-msgs std-msgs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = "The topic command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
