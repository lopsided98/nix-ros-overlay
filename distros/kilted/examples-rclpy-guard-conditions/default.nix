
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-examples-rclpy-guard-conditions";
  version = "0.20.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/kilted/examples_rclpy_guard_conditions/0.20.7-1.tar.gz";
    name = "0.20.7-1.tar.gz";
    sha256 = "9b7339ad2c1ce2219c6e8fc12b6ff13cca5c92ea52ccdaf44094614ab8b7ec6d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy ];

  meta = {
    description = "Examples of using guard conditions.";
    license = with lib.licenses; [ asl20 ];
  };
}
