
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-urdfdom-py";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_py-release/archive/release/rolling/urdfdom_py/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "66fa63642f9fdb8135b3518c044680419919845a0a30b49a277bb8b92a20c8a9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.lxml python3Packages.pyyaml rclpy ];

  meta = {
    description = "Python implementation of the URDF parser.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
