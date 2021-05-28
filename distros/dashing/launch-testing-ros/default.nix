
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, demo-nodes-py, launch-ros, launch-testing, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-launch-testing-ros";
  version = "0.8.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/dashing/launch_testing_ros/0.8.10-1.tar.gz";
    name = "0.8.10-1.tar.gz";
    sha256 = "2530b5604cc5912d5063582ebde50c57ef472ab0fa2039d30dc14b3fa8f38752";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 demo-nodes-py pythonPackages.pytest std-msgs ];
  propagatedBuildInputs = [ launch-ros launch-testing rclpy ];

  meta = {
    description = ''A package providing utilities for writing ROS2 enabled launch tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
