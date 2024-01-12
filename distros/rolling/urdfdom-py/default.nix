
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-urdfdom-py";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_py-release/archive/release/rolling/urdfdom_py/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "5860e60652fbcc7390018eb5e7fa8b99476025898c455baba1fe68a97126463e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.lxml python3Packages.pyyaml rclpy ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
