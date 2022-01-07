
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-galactic-urdfdom-py";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_py-release/archive/release/galactic/urdfdom_py/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "2041ad52eb1deeac7ae8bd975544c908661f77dda0fd66ff4a0c58f0a53b6089";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ python3Packages.lxml python3Packages.pyyaml rclpy ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
