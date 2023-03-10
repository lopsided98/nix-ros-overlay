
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-minimal-publisher";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_minimal_publisher/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "270175fcfd92ab6bdc55ba2d281dbd7158d8ff27f2e554daf1a26809596b1bf1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Examples of minimal publishers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
