
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, pythonPackages, rclpy, ros-testing, ros2cli, rosidl-runtime-py, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-eloquent-ros2topic";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2topic/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "fe924ce8778794808a4f5e5828d7587047cf2ad0c92e5670c1ca09eaf08d7277";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint geometry-msgs pythonPackages.pytest ros-testing std-msgs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The topic command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
