
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/humble/launch/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "0778b8b20f0b32971a5500cecf05cd4c221809233a2d6ff6b97891dd59d54364";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python osrf-pycommon python3Packages.importlib-metadata python3Packages.lark python3Packages.pyyaml ];

  meta = {
    description = "The ROS launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
