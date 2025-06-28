
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, graphviz, python3Packages, rclpy, tf2-msgs, tf2-py, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-tools";
  version = "0.42.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_tools/0.42.2-1.tar.gz";
    name = "0.42.2-1.tar.gz";
    sha256 = "f0b9b74b61d52937b5f552abedd97894639eb0d50f884fb60b1165c8d91952bd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ graphviz python3Packages.pyyaml rclpy tf2-msgs tf2-py tf2-ros-py ];

  meta = {
    description = "tf2_tools";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
