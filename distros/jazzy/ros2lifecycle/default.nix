
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, lifecycle-msgs, python3Packages, rclpy, ros2cli, ros2lifecycle-test-fixtures, ros2node, ros2service }:
buildRosPackage {
  pname = "ros-jazzy-ros2lifecycle";
  version = "0.32.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/jazzy/ros2lifecycle/0.32.3-1.tar.gz";
    name = "0.32.3-1.tar.gz";
    sha256 = "8a993b84f39689db8c0daab004227b3b0f69fca911135a468c4c2a7a4468960d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout ros2lifecycle-test-fixtures ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy ros2cli ros2node ros2service ];

  meta = {
    description = "The lifecycle command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
