
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclpy-minimal-subscriber";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclpy_minimal_subscriber/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "7c80e188ece7b9ee6912b4933e46805f12c46a827dd5c63a7fdc1c12e01fb30b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Examples of minimal subscribers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
