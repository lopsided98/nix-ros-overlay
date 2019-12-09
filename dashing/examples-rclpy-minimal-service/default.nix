
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, example-interfaces, ament-copyright, std-msgs, pythonPackages, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-examples-rclpy-minimal-service";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclpy_minimal_service/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "98223206a34c7abbd8d96c9a54bdfc07456f1ce7b9774cfbc260fee1c05d0220";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ example-interfaces std-msgs rclpy ];

  meta = {
    description = ''Examples of minimal service servers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
