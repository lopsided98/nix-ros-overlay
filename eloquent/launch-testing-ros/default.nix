
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, launch-testing, std-msgs, launch-ros, pythonPackages, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-launch-testing-ros";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/eloquent/launch_testing_ros/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "d712c7653423bb8ea663133cb26c0b76d5665182451c4a32af130650b40a5bd7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright std-msgs ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ launch-testing launch-ros rclpy ];

  meta = {
    description = ''A package providing utilities for writing ROS2 enabled launch tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
