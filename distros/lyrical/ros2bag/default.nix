
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch-testing, launch-testing-ros, python3Packages, rclpy, ros2cli, rosbag2-py, rosbag2-storage-default-plugins, rosbag2-test-common }:
buildRosPackage {
  pname = "ros-lyrical-ros2bag";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/ros2bag/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "e002534a6f099e6e0e9f358d630fb11cab518c7348d57d74b84a8ab4d669202c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout rosbag2-storage-default-plugins rosbag2-test-common ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy ros2cli rosbag2-py rosbag2-storage-default-plugins ];

  meta = {
    description = "Entry point for rosbag in ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
