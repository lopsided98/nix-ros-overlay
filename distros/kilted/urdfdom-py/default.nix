
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-urdfdom-py";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_py-release/archive/release/kilted/urdfdom_py/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "eb54b0115c70b7ffbd4e75aab47a13d55e278f3dd3f846af97afe0661cd66ced";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.lxml python3Packages.pyyaml rclpy ];

  meta = {
    description = "Python implementation of the URDF parser.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
