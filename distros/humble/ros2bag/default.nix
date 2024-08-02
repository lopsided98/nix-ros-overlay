
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch-testing, launch-testing-ros, pythonPackages, rclpy, ros2cli, rosbag2-py, rosbag2-storage-default-plugins }:
buildRosPackage {
  pname = "ros-humble-ros2bag";
  version = "0.15.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/ros2bag/0.15.12-1.tar.gz";
    name = "0.15.12-1.tar.gz";
    sha256 = "21d8d58f37a7737b648d4a5262c7d58e46e0ca93b05cb3e9ff379b0109f1c9c3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing launch-testing-ros pythonPackages.pytest rosbag2-storage-default-plugins ];
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli rosbag2-py ];

  meta = {
    description = "Entry point for rosbag in ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
