
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-minimal-subscriber";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_minimal_subscriber/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "06da4350fe3b9c6f7546a40c36e79af768dfff453202df72f0abe14fdb93a27c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of minimal subscribers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
