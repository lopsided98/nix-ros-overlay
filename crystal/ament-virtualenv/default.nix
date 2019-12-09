
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep257, pythonPackages, ament-flake8, ament-copyright }:
buildRosPackage {
  pname = "ros-crystal-ament-virtualenv";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/esol-community/ament_virtualenv-release/archive/release/crystal/ament_virtualenv/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "c444cf9de89ce4c55cd77fdf3717f8c9df15fa6e745410e6d88e3c4d8c7a0173";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];

  meta = {
    description = ''Bundle python requirements in a ament package via virtualenv.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
