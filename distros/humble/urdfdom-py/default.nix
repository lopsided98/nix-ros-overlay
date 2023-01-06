
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-humble-urdfdom-py";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_py-release/archive/release/humble/urdfdom_py/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "1c62c19081d02de1431c1375bb868008be69361f7b08e4580a9313c9fa2e06e2";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ python3Packages.lxml python3Packages.pyyaml rclpy ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
