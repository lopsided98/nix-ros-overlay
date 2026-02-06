
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch-testing, launch-testing-ros, python3Packages, rclpy, ros2cli, rosbag2-py, rosbag2-storage-default-plugins }:
buildRosPackage {
  pname = "ros-humble-ros2bag";
  version = "0.15.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/ros2bag/0.15.16-1.tar.gz";
    name = "0.15.16-1.tar.gz";
    sha256 = "874623bdfb1eb101697eabb4043acf7031df6cc9341232e1f1df72b6a1807c17";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing launch-testing-ros python3Packages.pytest rosbag2-storage-default-plugins ];
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli rosbag2-py rosbag2-storage-default-plugins ];

  meta = {
    description = "Entry point for rosbag in ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
