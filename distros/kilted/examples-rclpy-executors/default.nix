
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-examples-rclpy-executors";
  version = "0.20.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/kilted/examples_rclpy_executors/0.20.7-1.tar.gz";
    name = "0.20.7-1.tar.gz";
    sha256 = "4a06c4e288b969fda8f70ebcf67a47f897925dcd4b18806125a3b040b948e309";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of creating and using exectors to run multiple nodes in the same process";
    license = with lib.licenses; [ asl20 ];
  };
}
