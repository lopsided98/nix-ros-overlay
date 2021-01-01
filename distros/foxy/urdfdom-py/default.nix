
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-foxy-urdfdom-py";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_py-release/archive/release/foxy/urdfdom_py/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "1ae1816fbc29bd091b7372ca429cbf0282ea10f23b2c862b135781af9ac96925";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ python3Packages.lxml python3Packages.pyyaml rclpy ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
