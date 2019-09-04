
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, launch-ros, rclpy, launch-testing, pythonPackages, demo-nodes-py, ament-pep257, std-msgs, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-launch-testing-ros";
  version = "0.8.5-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/launch_ros-release/archive/release/dashing/launch_testing_ros/0.8.5-1.tar.gz;
    sha256 = "ce1187115f8bcb4d1d16fd843e70a476436760e55005d43ff5275f3e4ce9e906";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 pythonPackages.pytest demo-nodes-py ament-pep257 std-msgs ament-copyright ];
  propagatedBuildInputs = [ rclpy launch-testing launch-ros ];

  meta = {
    description = ''A package providing utilities for writing ROS2 enabled launch tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
