
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-guard-conditions";
  version = "0.20.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_guard_conditions/0.20.4-1.tar.gz";
    name = "0.20.4-1.tar.gz";
    sha256 = "d968862f798c8af917148f9222e488f0abd39fa2f6b5a33eeff4b4a3f61ec0f1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy ];

  meta = {
    description = "Examples of using guard conditions.";
    license = with lib.licenses; [ asl20 ];
  };
}
