
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-urdfdom-py";
  version = "1.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_py-release/archive/release/lyrical/urdfdom_py/1.2.1-4.tar.gz";
    name = "1.2.1-4.tar.gz";
    sha256 = "64e0a22bc9bf65c0ae94520ceac28b995410ac7655d540a4d985be08eca17b3b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.lxml python3Packages.pyyaml rclpy ];

  meta = {
    description = "Python implementation of the URDF parser.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
