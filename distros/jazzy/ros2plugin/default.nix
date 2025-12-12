
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python3Packages, rclpy, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-jazzy-ros2plugin";
  version = "5.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/jazzy/ros2plugin/5.4.4-1.tar.gz";
    name = "5.4.4-1.tar.gz";
    sha256 = "944161ef6b90b96a4953bf71fc3b3227e1460e33ebf0e07031d37f2cae036080";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli ros2pkg ];

  meta = {
    description = "The plugin command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
