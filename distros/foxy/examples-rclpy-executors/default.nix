
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-examples-rclpy-executors";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/foxy/examples_rclpy_executors/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "a05afbd548cf17f0ac483da23da1462d9f86ce276e7e164b9a66c098d2515109";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Examples of creating and using exectors to run multiple nodes in the same process'';
    license = with lib.licenses; [ asl20 ];
  };
}
