
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclpy-minimal-subscriber";
  version = "0.19.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclpy_minimal_subscriber/0.19.6-1.tar.gz";
    name = "0.19.6-1.tar.gz";
    sha256 = "5ec5bb4c04f8fbb1f13191daa04de8653e2b55f98f07770492478be514d88b6d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of minimal subscribers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
