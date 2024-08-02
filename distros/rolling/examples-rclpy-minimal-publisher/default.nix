
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-minimal-publisher";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_minimal_publisher/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "e65493f6e23e1a20ba324f826933cab15e633939a408591d0d4d3140f3b1c9a1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of minimal publishers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
