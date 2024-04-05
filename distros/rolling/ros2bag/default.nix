
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rclpy, ros2cli, rosbag2-py, rosbag2-storage-default-plugins, rosbag2-test-common }:
buildRosPackage {
  pname = "ros-rolling-ros2bag";
  version = "0.25.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/ros2bag/0.25.0-1.tar.gz";
    name = "0.25.0-1.tar.gz";
    sha256 = "fd4c57c6657d86da798c4ad29f626f14779b458459d53453671be5cde2663c2f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing launch-testing-ros pythonPackages.pytest rosbag2-storage-default-plugins rosbag2-test-common ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy ros2cli rosbag2-py ];

  meta = {
    description = "Entry point for rosbag in ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
