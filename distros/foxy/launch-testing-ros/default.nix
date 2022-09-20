
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-ros, launch-testing, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-launch-testing-ros";
  version = "0.11.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/foxy/launch_testing_ros/0.11.7-1.tar.gz";
    name = "0.11.7-1.tar.gz";
    sha256 = "57ffccbec642395bb40ea858cb18cb6c057ff59b521c6a152f17e2b09ba00ab0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest std-msgs ];
  propagatedBuildInputs = [ launch-ros launch-testing rclpy ];

  meta = {
    description = ''A package providing utilities for writing ROS2 enabled launch tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
