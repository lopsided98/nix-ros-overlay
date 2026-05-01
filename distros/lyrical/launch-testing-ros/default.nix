
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch-ros, launch-testing, python3Packages, rclpy, rmw-test-fixture-implementation, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-launch-testing-ros";
  version = "0.29.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/lyrical/launch_testing_ros/0.29.8-1.tar.gz";
    name = "0.29.8-1.tar.gz";
    sha256 = "e4662d73b970574a1bd1c10ce1fc998717a35728c9f3aea21ff0e385a4623cad";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest std-msgs ];
  propagatedBuildInputs = [ ament-index-python launch-ros launch-testing rclpy rmw-test-fixture-implementation ];

  meta = {
    description = "A package providing utilities for writing ROS2 enabled launch tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
