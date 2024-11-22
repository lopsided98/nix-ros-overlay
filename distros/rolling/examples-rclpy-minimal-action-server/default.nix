
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, example-interfaces, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-minimal-action-server";
  version = "0.20.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_minimal_action_server/0.20.3-1.tar.gz";
    name = "0.20.3-1.tar.gz";
    sha256 = "dbaff690d4564d384d4a92b8e58ad4d180424c4ef92fc11382c513eb7d1e14e4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy ];

  meta = {
    description = "Examples of minimal action servers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
