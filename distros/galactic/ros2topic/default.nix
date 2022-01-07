
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, pythonPackages, rclpy, ros-testing, ros2cli, rosidl-runtime-py, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-galactic-ros2topic";
  version = "0.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/galactic/ros2topic/0.13.2-1.tar.gz";
    name = "0.13.2-1.tar.gz";
    sha256 = "74574491d9de0573b48dc0c8e686b20bc50d7a89062ad88cfd375fb97121b33a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint geometry-msgs pythonPackages.pytest ros-testing std-msgs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The topic command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
