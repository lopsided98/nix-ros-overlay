
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclpy-minimal-action-client";
  version = "0.19.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclpy_minimal_action_client/0.19.6-1.tar.gz";
    name = "0.19.6-1.tar.gz";
    sha256 = "b4c19ffe4e00700588db0a397cf7dc405af20197b04f20813611c4dd951eafad";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ action-msgs example-interfaces rclpy ];

  meta = {
    description = "Examples of minimal action clients using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
