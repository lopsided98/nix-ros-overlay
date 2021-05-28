
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-rpyutils";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rpyutils-release/archive/release/galactic/rpyutils/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "e68f96f4718e6900071200d730ffaf41fe727667af35de61c2544a5018509b8e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];

  meta = {
    description = ''Package containing various utility types and functions for Python'';
    license = with lib.licenses; [ asl20 ];
  };
}
