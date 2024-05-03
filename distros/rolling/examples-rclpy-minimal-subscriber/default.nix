
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-minimal-subscriber";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_minimal_subscriber/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "6e8c9b412dd7937a971050b0cb3308603ef124468f5a29dad15c0c44169d8f35";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of minimal subscribers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
