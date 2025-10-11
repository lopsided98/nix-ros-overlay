
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python3Packages, rclpy, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-rolling-ros2plugin";
  version = "5.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/rolling/ros2plugin/5.8.0-1.tar.gz";
    name = "5.8.0-1.tar.gz";
    sha256 = "2e668aa9d8e2b028996a2285718492065b37ebcd05d5ff91852eb641d5fae9dc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli ros2pkg ];

  meta = {
    description = "The plugin command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
