
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-eloquent-ament-virtualenv";
  version = "0.0.5-r6";

  src = fetchurl {
    url = "https://github.com/esol-community/ament_virtualenv-release/archive/release/eloquent/ament_virtualenv/0.0.5-6.tar.gz";
    name = "0.0.5-6.tar.gz";
    sha256 = "bc0bb431ff3059a5c8b0b7941880f70b0e54f3971cbbad59e58ed8f375678464";
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
