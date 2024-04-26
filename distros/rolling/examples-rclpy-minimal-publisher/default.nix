
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-minimal-publisher";
  version = "0.19.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_minimal_publisher/0.19.3-1.tar.gz";
    name = "0.19.3-1.tar.gz";
    sha256 = "6be4a76114047475b39468c9369577d3d19d556b4a69b72ae5ac761f65ae9bc9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of minimal publishers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
