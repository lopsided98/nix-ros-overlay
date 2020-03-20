
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, rclpy, ros2cli, ros2msg, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-dashing-ros2topic";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2topic/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "65e6b8b3634b05646bd07e5aa9d28720f06876b7a5c394ebc3d9c7c6316d2d4b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rclpy ros2cli ros2msg rosidl-runtime-py ];

  meta = {
    description = ''The topic command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
