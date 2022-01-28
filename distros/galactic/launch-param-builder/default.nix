
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, python3Packages, pythonPackages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-galactic-launch-param-builder";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/launch_param_builder-release/archive/release/galactic/launch_param_builder/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "25e509f790330382d2152f27e66668839668e3ac0b34af480db51c6770d49a1b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy xacro ];

  meta = {
    description = ''Python library for loading parameters in launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
