
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch-testing, launch-testing-ros, python3Packages, rclpy, ros2cli, rosbag2-py, rosbag2-storage-default-plugins, rosbag2-test-common }:
buildRosPackage {
  pname = "ros-jazzy-ros2bag";
  version = "0.26.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/ros2bag/0.26.9-1.tar.gz";
    name = "0.26.9-1.tar.gz";
    sha256 = "aa78cb74c65366881ef01acd7b0ad5b2b38856546fdc7519ce6a00f4d3018393";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing launch-testing-ros python3Packages.pytest rosbag2-storage-default-plugins rosbag2-test-common ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy ros2cli rosbag2-py ];

  meta = {
    description = "Entry point for rosbag in ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
