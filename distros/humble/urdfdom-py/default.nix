
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-humble-urdfdom-py";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_py-release/archive/release/humble/urdfdom_py/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "1e82cf67bfcb7027654ea1f112d0758cbf3a690e29e2c66e580f34d0e682148d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.lxml python3Packages.pyyaml rclpy ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
