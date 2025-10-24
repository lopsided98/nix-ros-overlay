
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclpy-guard-conditions";
  version = "0.19.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclpy_guard_conditions/0.19.7-1.tar.gz";
    name = "0.19.7-1.tar.gz";
    sha256 = "0eba91c08cdb2263e15a784a87e3060fa3c9b92bc5e733753e3e949d3c0bd0cc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy ];

  meta = {
    description = "Examples of using guard conditions.";
    license = with lib.licenses; [ asl20 ];
  };
}
