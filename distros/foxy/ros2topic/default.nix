
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, pythonPackages, rclpy, ros-testing, ros2cli, rosidl-runtime-py, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-ros2topic";
  version = "0.9.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/foxy/ros2topic/0.9.13-1.tar.gz";
    name = "0.9.13-1.tar.gz";
    sha256 = "ef2dbf436e3fc1b7fe307bb5e8d3ba6099969c0a8559d93cd4d5bf309f1e146e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint geometry-msgs pythonPackages.pytest ros-testing std-msgs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The topic command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
