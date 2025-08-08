
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-examples-rclpy-executors";
  version = "0.20.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/kilted/examples_rclpy_executors/0.20.5-1.tar.gz";
    name = "0.20.5-1.tar.gz";
    sha256 = "9ab626e1db4e7760b17ce3d36b01085db1d5239616e84be146542b04dcb878b4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of creating and using exectors to run multiple nodes in the same process";
    license = with lib.licenses; [ asl20 ];
  };
}
