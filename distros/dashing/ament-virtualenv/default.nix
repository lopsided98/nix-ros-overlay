
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-ament-virtualenv";
  version = "0.0.5-r5";

  src = fetchurl {
    url = "https://github.com/esol-community/ament_virtualenv-release/archive/release/dashing/ament_virtualenv/0.0.5-5.tar.gz";
    name = "0.0.5-5.tar.gz";
    sha256 = "207b5fd15d46bfbf8d09f2c6600da42670307235202dc44cedddc7a13f9e7f9e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.packaging pythonPackages.pytest pythonPackages.virtualenv ];
  propagatedBuildInputs = [ python3Packages.packaging pythonPackages.virtualenv ];
  nativeBuildInputs = [ python3Packages.packaging pythonPackages.virtualenv ];

  meta = {
    description = ''Bundle python requirements in a ament package via virtualenv.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
