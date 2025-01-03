
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-examples-rclpy-minimal-client";
  version = "0.15.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclpy_minimal_client/0.15.3-1.tar.gz";
    name = "0.15.3-1.tar.gz";
    sha256 = "cbc617d41cf86cf77260f0a8c79e69aec92eaf2fb18f2e222a37745821371246";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy std-msgs ];

  meta = {
    description = "Examples of minimal service clients using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
