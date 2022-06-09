
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, python3Packages, pythonPackages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-galactic-launch-param-builder";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/launch_param_builder-release/archive/release/galactic/launch_param_builder/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "408197f535f9f8aaba6fd842a8b50e311a1e304ae1bb2060242897d7739acb72";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy xacro ];

  meta = {
    description = ''Python library for loading parameters in launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
