
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, launch-ros, rclpy, launch-testing, pythonPackages, demo-nodes-py, ament-pep257, std-msgs, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-launch-testing-ros";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/dashing/launch_testing_ros/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "16acb0261e74aaaedddb08268d9cc835f8b48c5690cb6eddc16edc225de79f2a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 pythonPackages.pytest demo-nodes-py ament-pep257 std-msgs ament-copyright ];
  propagatedBuildInputs = [ rclpy launch-testing launch-ros ];

  meta = {
    description = ''A package providing utilities for writing ROS2 enabled launch tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
