
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, pythonPackages, rclpy, ros-testing, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-ros2action";
  version = "0.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/foxy/ros2action/0.9.8-1.tar.gz";
    name = "0.9.8-1.tar.gz";
    sha256 = "4c295dbf3524f8f2980351de22c606b91ed20f394ea1605e7ab72166bc577823";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ros-testing test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-index-python rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The action command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
