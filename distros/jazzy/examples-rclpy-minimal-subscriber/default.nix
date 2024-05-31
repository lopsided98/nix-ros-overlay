
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclpy-minimal-subscriber";
  version = "0.19.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclpy_minimal_subscriber/0.19.3-2.tar.gz";
    name = "0.19.3-2.tar.gz";
    sha256 = "232beb984b3ce208be29abd6ae628594e9bbc64e7a2e30539c03d302cb15f7a4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of minimal subscribers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
