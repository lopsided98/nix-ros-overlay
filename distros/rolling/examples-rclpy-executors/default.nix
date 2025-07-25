
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-executors";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_executors/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "35f898829c6bbd7dff4d68b3fac5cea765e3bb12f68e1732ee2c5bc58ac0aac2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of creating and using exectors to run multiple nodes in the same process";
    license = with lib.licenses; [ asl20 ];
  };
}
