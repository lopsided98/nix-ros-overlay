
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch-ros, launch-testing, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-launch-testing-ros";
  version = "0.26.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/rolling/launch_testing_ros/0.26.4-2.tar.gz";
    name = "0.26.4-2.tar.gz";
    sha256 = "dbba85bd40de0d8a61161d39c065d007353b8aa64e7110e02d8a027a8e7d00f2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest std-msgs ];
  propagatedBuildInputs = [ ament-index-python launch-ros launch-testing rclpy ];

  meta = {
    description = ''A package providing utilities for writing ROS2 enabled launch tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
