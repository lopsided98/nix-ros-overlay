
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, rclpy, ros2cli, ros2srv, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-dashing-ros2service";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2service/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "1c01e9ad32981920f2931db93b9936e9d1a99679bb91f5a138f8560eef044053";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml rclpy ros2cli ros2srv rosidl-runtime-py ];

  meta = {
    description = ''The service command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
