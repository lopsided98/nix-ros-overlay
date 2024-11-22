
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, example-interfaces, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-minimal-service";
  version = "0.20.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_minimal_service/0.20.3-1.tar.gz";
    name = "0.20.3-1.tar.gz";
    sha256 = "a98676350b38299ca3b16ba1c11d8626daa2b1b50101f27a9b35b5f51fd4ceda";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy std-msgs ];

  meta = {
    description = "Examples of minimal service servers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
