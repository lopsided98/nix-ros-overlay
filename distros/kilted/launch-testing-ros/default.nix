
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch-ros, launch-testing, python3Packages, rclpy, rmw-test-fixture-implementation, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-launch-testing-ros";
  version = "0.28.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/kilted/launch_testing_ros/0.28.2-1.tar.gz";
    name = "0.28.2-1.tar.gz";
    sha256 = "7b2b62944248ad9f552456a596eefeb84d6551f032711d2423109588dd02b130";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest std-msgs ];
  propagatedBuildInputs = [ ament-index-python launch-ros launch-testing rclpy rmw-test-fixture-implementation ];

  meta = {
    description = "A package providing utilities for writing ROS2 enabled launch tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
