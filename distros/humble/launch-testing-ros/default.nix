
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-ros, launch-testing, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-launch-testing-ros";
  version = "0.19.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/humble/launch_testing_ros/0.19.12-1.tar.gz";
    name = "0.19.12-1.tar.gz";
    sha256 = "e3d2f6c14097f9859b243f29249ac931940323d5018ec4b23ffcb1ca2ae6bcc6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest std-msgs ];
  propagatedBuildInputs = [ launch-ros launch-testing rclpy ];

  meta = {
    description = "A package providing utilities for writing ROS2 enabled launch tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
