
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-minimal-subscriber";
  version = "0.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_minimal_subscriber/0.19.2-1.tar.gz";
    name = "0.19.2-1.tar.gz";
    sha256 = "d6ca965afe4deea65717d9d359ec8c55feeb51b49fc6566bf0479b99ccbe636f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of minimal subscribers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
