
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclpy-guard-conditions";
  version = "0.19.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclpy_guard_conditions/0.19.6-1.tar.gz";
    name = "0.19.6-1.tar.gz";
    sha256 = "9d2d1abb03d595c379b49e2ee33ff006130c552f41af0dc2f830ac035fc22ed8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy ];

  meta = {
    description = "Examples of using guard conditions.";
    license = with lib.licenses; [ asl20 ];
  };
}
