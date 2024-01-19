
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-iron-urdfdom-py";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_py-release/archive/release/iron/urdfdom_py/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "278291a2a4eac11bcdf9110da5dc84e06c23f8d831592d28b121129cc235dec5";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.lxml python3Packages.pyyaml rclpy ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
