
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-guard-conditions";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_guard_conditions/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "a6817b6e4f63a40e8b4125c0f331e94cd4ac92aaac4ebfd026893dd8b74c5a66";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy ];

  meta = {
    description = "Examples of using guard conditions.";
    license = with lib.licenses; [ asl20 ];
  };
}
