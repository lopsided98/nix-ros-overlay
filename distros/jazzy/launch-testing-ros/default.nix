
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch-ros, launch-testing, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-launch-testing-ros";
  version = "0.26.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/jazzy/launch_testing_ros/0.26.6-1.tar.gz";
    name = "0.26.6-1.tar.gz";
    sha256 = "7c95d2a9674e94388b8418804af7325261beeeb065f2ffce59fc5b36ec403a20";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest std-msgs ];
  propagatedBuildInputs = [ ament-index-python launch-ros launch-testing rclpy ];

  meta = {
    description = "A package providing utilities for writing ROS2 enabled launch tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
