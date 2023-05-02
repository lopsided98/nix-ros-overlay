
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch-ros, launch-testing, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-launch-testing-ros";
  version = "0.25.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/rolling/launch_testing_ros/0.25.0-1.tar.gz";
    name = "0.25.0-1.tar.gz";
    sha256 = "919151d946b8bc2e4cdb2bc50f26d84e239af1e8f7bb5bd445fc4adaebefb005";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest std-msgs ];
  propagatedBuildInputs = [ ament-index-python launch-ros launch-testing rclpy ];

  meta = {
    description = ''A package providing utilities for writing ROS2 enabled launch tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
