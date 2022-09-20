
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, lifecycle-msgs, pythonPackages, rclpy, ros-testing, ros2cli, ros2lifecycle-test-fixtures, ros2node, ros2service }:
buildRosPackage {
  pname = "ros-foxy-ros2lifecycle";
  version = "0.9.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/foxy/ros2lifecycle/0.9.12-1.tar.gz";
    name = "0.9.12-1.tar.gz";
    sha256 = "08cec578b06d54813f46e0e8083b363cff90c3f4135b1097e981436405b7115c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ros-testing ros2lifecycle-test-fixtures ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy ros2cli ros2node ros2service ];

  meta = {
    description = ''The lifecycle command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
