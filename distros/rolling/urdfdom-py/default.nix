
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-urdfdom-py";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_py-release/archive/release/rolling/urdfdom_py/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "6e7482693ea9002a004b44a3b8db7c4377392a5749378480c519687e0c91b639";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ python3Packages.lxml python3Packages.pyyaml rclpy ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
