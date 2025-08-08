
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-executors";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_executors/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "321fdd0f1a10ea1a7550d89d6207acfc5e5eb6494ff854b9bdf9d3683dbd51b5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of creating and using exectors to run multiple nodes in the same process";
    license = with lib.licenses; [ asl20 ];
  };
}
