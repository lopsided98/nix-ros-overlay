
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-minimal-client";
  version = "0.16.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_minimal_client/0.16.2-1.tar.gz";
    name = "0.16.2-1.tar.gz";
    sha256 = "e0b3b789272a4cf8a77c481c14d37c877e27f8dbca7a63a313768e3cad19cb0a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy std-msgs ];

  meta = {
    description = ''Examples of minimal service clients using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
