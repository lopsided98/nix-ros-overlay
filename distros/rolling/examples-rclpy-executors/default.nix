
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-executors";
  version = "0.16.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_executors/0.16.2-1.tar.gz";
    name = "0.16.2-1.tar.gz";
    sha256 = "ac63f37e73289bdad7acc2bc21c7de8dddf65598e15544f1a0d640274a4ff263";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Examples of creating and using exectors to run multiple nodes in the same process'';
    license = with lib.licenses; [ asl20 ];
  };
}
