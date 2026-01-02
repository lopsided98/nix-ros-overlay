
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python3Packages, rclpy, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-rolling-ros2plugin";
  version = "5.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/rolling/ros2plugin/5.8.2-1.tar.gz";
    name = "5.8.2-1.tar.gz";
    sha256 = "fc74eac92a5620903ded30257247dbf7fc4be80fa9f44dfd6142b9febae90b89";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli ros2pkg ];

  meta = {
    description = "The plugin command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
