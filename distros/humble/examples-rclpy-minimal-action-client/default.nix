
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-humble-examples-rclpy-minimal-action-client";
  version = "0.15.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclpy_minimal_action_client/0.15.4-1.tar.gz";
    name = "0.15.4-1.tar.gz";
    sha256 = "b1714f9f2a5bf876404f9903ebfcfc98d28c25fdb347000242d80d369e3c0db9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy ];

  meta = {
    description = "Examples of minimal action clients using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
