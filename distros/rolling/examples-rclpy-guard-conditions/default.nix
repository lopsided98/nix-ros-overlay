
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-guard-conditions";
  version = "0.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_guard_conditions/0.19.2-1.tar.gz";
    name = "0.19.2-1.tar.gz";
    sha256 = "ea26b8f7f5f0a1dc18027cdb2261c34b27f5474be0b9b562a4ab9d2e9c3640c4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy ];

  meta = {
    description = "Examples of using guard conditions.";
    license = with lib.licenses; [ asl20 ];
  };
}
