
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch-testing, launch-testing-ros, pythonPackages, rclpy, ros2cli, rosbag2-py }:
buildRosPackage {
  pname = "ros-humble-ros2bag";
  version = "0.15.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/ros2bag/0.15.5-1.tar.gz";
    name = "0.15.5-1.tar.gz";
    sha256 = "79329268a1350ce2ebc6132b86a33a154fbbacc3d843828ebce8ddd39a8d9a3d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing launch-testing-ros pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli rosbag2-py ];

  meta = {
    description = ''Entry point for rosbag in ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
