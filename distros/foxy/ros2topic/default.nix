
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, pythonPackages, rclpy, ros-testing, ros2cli, rosidl-runtime-py, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-ros2topic";
  version = "0.9.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/foxy/ros2topic/0.9.12-1.tar.gz";
    name = "0.9.12-1.tar.gz";
    sha256 = "b224cb8b4810bd489310df2e9897532e5de55123cfa45b50778dc4a69e583020";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint geometry-msgs pythonPackages.pytest ros-testing std-msgs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The topic command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
