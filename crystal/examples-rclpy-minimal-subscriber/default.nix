
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, std-msgs, pythonPackages, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-crystal-examples-rclpy-minimal-subscriber";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclpy_minimal_subscriber/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "549277190cb95b82551aa913eaf92b9e48aee264134c5fba42a6d248ae0f0596";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ std-msgs rclpy ];

  meta = {
    description = ''Examples of minimal subscribers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
