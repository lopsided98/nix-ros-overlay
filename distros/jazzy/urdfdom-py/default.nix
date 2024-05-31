
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-urdfdom-py";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_py-release/archive/release/jazzy/urdfdom_py/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "25d3eb62691ff250343d35db9966e80f21578b3ee7459bc4443ccc89f893a4a0";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.lxml python3Packages.pyyaml rclpy ];

  meta = {
    description = "Python implementation of the URDF parser.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
