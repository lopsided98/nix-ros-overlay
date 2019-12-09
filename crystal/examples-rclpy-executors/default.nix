
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, std-msgs, pythonPackages, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-crystal-examples-rclpy-executors";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclpy_executors/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "c9d7cf286993d9694474145287a1b37acaceb6d37f2a4d7f5759adb08cb76b83";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ std-msgs rclpy ];

  meta = {
    description = ''Examples of creating and using exectors to run multiple nodes in the same process'';
    license = with lib.licenses; [ asl20 ];
  };
}
