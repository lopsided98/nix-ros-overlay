
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, osrf-pycommon, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-launch";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/iron/launch/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "80f332ad5b6eb0fd33e0ba23137514f746389e487c5bf2009abceecbf1649df7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python osrf-pycommon python3Packages.importlib-metadata python3Packages.lark python3Packages.pyyaml ];

  meta = {
    description = "The ROS launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
