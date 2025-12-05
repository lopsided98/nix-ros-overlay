
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, launch-ros, python3Packages, rclpy, sensor-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-examples-tf2-py";
  version = "0.45.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/examples_tf2_py/0.45.4-1.tar.gz";
    name = "0.45.4-1.tar.gz";
    sha256 = "222c3bf682f1af57b97b36d39c6ad3410565a99a5d52506a9c55f36e4ec74b11";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs launch-ros rclpy sensor-msgs tf2-ros-py ];

  meta = {
    description = "Has examples of using the tf2 Python API.";
    license = with lib.licenses; [ asl20 ];
  };
}
