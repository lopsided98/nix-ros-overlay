
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch-testing, launch-testing-ros, pythonPackages, rclpy, ros2cli, rosbag2-py }:
buildRosPackage {
  pname = "ros-humble-ros2bag";
  version = "0.15.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/ros2bag/0.15.6-1.tar.gz";
    name = "0.15.6-1.tar.gz";
    sha256 = "5dcab7dc6d68dfda090bf34dccb789a3570f9a11402ae5ed41a43094d7f305c8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing launch-testing-ros pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli rosbag2-py ];

  meta = {
    description = ''Entry point for rosbag in ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
