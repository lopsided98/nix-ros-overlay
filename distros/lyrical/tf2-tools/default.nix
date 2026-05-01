
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, graphviz, python3Packages, rclpy, tf2-msgs, tf2-py, tf2-ros-py }:
buildRosPackage {
  pname = "ros-lyrical-tf2-tools";
  version = "0.45.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/lyrical/tf2_tools/0.45.7-3.tar.gz";
    name = "0.45.7-3.tar.gz";
    sha256 = "91f207133cfabfe5d8f432db45b575b8d0aaf426e7f49ffe1da950d15a1f40da";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ graphviz python3Packages.pyyaml rclpy tf2-msgs tf2-py tf2-ros-py ];

  meta = {
    description = "tf2_tools";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
