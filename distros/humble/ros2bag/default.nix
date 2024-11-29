
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch-testing, launch-testing-ros, pythonPackages, rclpy, ros2cli, rosbag2-py, rosbag2-storage-default-plugins }:
buildRosPackage {
  pname = "ros-humble-ros2bag";
  version = "0.15.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/ros2bag/0.15.13-1.tar.gz";
    name = "0.15.13-1.tar.gz";
    sha256 = "ca4aa39499c3a5ec65e11a545f8fe408460e05591da8d5674261a16d5c7290e6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing launch-testing-ros pythonPackages.pytest rosbag2-storage-default-plugins ];
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli rosbag2-py ];

  meta = {
    description = "Entry point for rosbag in ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
