
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, osrf-pycommon, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch";
  version = "3.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch/3.4.0-2.tar.gz";
    name = "3.4.0-2.tar.gz";
    sha256 = "134aff319d0bc71bc1d05e28fb84eabcec1b9a181579b8fa3f6a869001f6de4c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python osrf-pycommon python3Packages.importlib-metadata python3Packages.lark python3Packages.pyyaml ];

  meta = {
    description = "The ROS launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
