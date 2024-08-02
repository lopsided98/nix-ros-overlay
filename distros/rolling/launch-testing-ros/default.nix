
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch-ros, launch-testing, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-launch-testing-ros";
  version = "0.27.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/rolling/launch_testing_ros/0.27.2-1.tar.gz";
    name = "0.27.2-1.tar.gz";
    sha256 = "7b323f9f555e33bb60e52d758d2029612bd32068e0f3ca9d94e7e322bacc8e8a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest std-msgs ];
  propagatedBuildInputs = [ ament-index-python launch-ros launch-testing rclpy ];

  meta = {
    description = "A package providing utilities for writing ROS2 enabled launch tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
