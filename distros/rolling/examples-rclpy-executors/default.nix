
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-executors";
  version = "0.20.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_executors/0.20.3-1.tar.gz";
    name = "0.20.3-1.tar.gz";
    sha256 = "39e53b51893c0663897541f640e5c22ba1c6a14bbeea0f35d09c568f0238803f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of creating and using exectors to run multiple nodes in the same process";
    license = with lib.licenses; [ asl20 ];
  };
}
