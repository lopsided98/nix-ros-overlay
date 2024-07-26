
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-iron-examples-rclpy-minimal-client";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/iron/examples_rclpy_minimal_client/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "ef12789870bcbc61e40573738cb3e1c3a4f81ba438a462b7c32cd74cd60c1267";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy std-msgs ];

  meta = {
    description = "Examples of minimal service clients using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
