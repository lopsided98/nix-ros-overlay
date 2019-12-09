
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, example-interfaces, ament-copyright, std-msgs, pythonPackages, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-crystal-examples-rclpy-minimal-service";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclpy_minimal_service/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "e5f701fcf72f20f0e5e05dffb741d0f537e77daf58f5daa8e1227843ea98a18c";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ example-interfaces std-msgs rclpy ];

  meta = {
    description = ''Examples of minimal service servers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
