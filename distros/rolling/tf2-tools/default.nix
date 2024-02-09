
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, graphviz, python3Packages, pythonPackages, rclpy, tf2-msgs, tf2-py, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-tools";
  version = "0.36.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_tools/0.36.0-1.tar.gz";
    name = "0.36.0-1.tar.gz";
    sha256 = "58189b009eb43d99361ecb8eb5c4fd8a9ca724b31f4bd1443cec3ab0ff048fbb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ graphviz python3Packages.pyyaml rclpy tf2-msgs tf2-py tf2-ros-py ];

  meta = {
    description = ''tf2_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
