
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-picknik-ament-copyright";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/picknik_ament_copyright-release/archive/release/galactic/picknik_ament_copyright/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "09836477d7137c01aec13a2e7059ebe28711242ddda42c71b0df988e44c9de7b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-copyright ];

  meta = {
    description = ''Check PickNik-specific copyright headers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
