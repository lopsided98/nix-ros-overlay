
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, lifecycle-msgs, python3Packages, pythonPackages, rclpy, ros2cli, ros2lifecycle-test-fixtures, ros2node, ros2service }:
buildRosPackage {
  pname = "ros-rolling-ros2lifecycle";
  version = "0.31.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2lifecycle/0.31.1-2.tar.gz";
    name = "0.31.1-2.tar.gz";
    sha256 = "a43c86345fa01bb8a3a189f38d4a82df5535b58ea5550b28fd8c0697fb986254";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest ros2lifecycle-test-fixtures ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy ros2cli ros2node ros2service ];

  meta = {
    description = "The lifecycle command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
