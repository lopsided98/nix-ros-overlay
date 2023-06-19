
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, osrf-pycommon, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-launch";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/iron/launch/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "d15ac9475e53800c14814306627ac641d9b1968ef7aaf22096b045225d56ecbd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python osrf-pycommon python3Packages.importlib-metadata python3Packages.lark python3Packages.pyyaml ];

  meta = {
    description = ''The ROS launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
