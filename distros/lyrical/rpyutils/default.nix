
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-rpyutils";
  version = "0.7.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rpyutils-release/archive/release/lyrical/rpyutils/0.7.2-3.tar.gz";
    name = "0.7.2-3.tar.gz";
    sha256 = "08ebe8816603e13ee3392f3472359dc8e873be37e57cb28565664eabd34dcff2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "Package containing various utility types and functions for Python";
    license = with lib.licenses; [ asl20 ];
  };
}
