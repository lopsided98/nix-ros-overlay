
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python3Packages, rclpy, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-rolling-ros2plugin";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/rolling/ros2plugin/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "58c319e187a959bebac672a7ae720d10df63e2c27763f5f93b409f4318520efb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli ros2pkg ];

  meta = {
    description = "The plugin command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
