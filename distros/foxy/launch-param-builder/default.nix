
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, python3Packages, pythonPackages, rclpy, xacro }:
buildRosPackage {
  pname = "ros-foxy-launch-param-builder";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/launch_param_builder-release/archive/release/foxy/launch_param_builder/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "530e4a7ec9daa50d844a22f4849a2df74869484d3cece8903752a6ae2bf46335";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy xacro ];

  meta = {
    description = ''Python library for loading parameters in launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
