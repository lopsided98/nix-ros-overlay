
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-urdfdom-py";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_py-release/archive/release/rolling/urdfdom_py/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "53818eb42312f6acd1ec0c04fe1eb90a54bb9c3cf8dd81d5591c53f55f6db84d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.lxml python3Packages.pyyaml rclpy ];

  meta = {
    description = "Python implementation of the URDF parser.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
