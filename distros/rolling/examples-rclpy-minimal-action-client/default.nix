
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, example-interfaces, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-minimal-action-client";
  version = "0.20.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_minimal_action_client/0.20.3-1.tar.gz";
    name = "0.20.3-1.tar.gz";
    sha256 = "b54abe57fee10d4f5973f137762b2254cc1ebbfeca97e4243540e87e2f5bdddd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ action-msgs example-interfaces rclpy ];

  meta = {
    description = "Examples of minimal action clients using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
