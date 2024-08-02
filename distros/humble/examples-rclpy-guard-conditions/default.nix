
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-examples-rclpy-guard-conditions";
  version = "0.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclpy_guard_conditions/0.15.2-1.tar.gz";
    name = "0.15.2-1.tar.gz";
    sha256 = "6d7afecddf113c57fc1dfde2281ecef535dd31d442904e57dfef3cf12ec97302";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy ];

  meta = {
    description = "Examples of using guard conditions.";
    license = with lib.licenses; [ asl20 ];
  };
}
