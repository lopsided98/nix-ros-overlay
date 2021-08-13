
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-picknik-ament-copyright";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/picknik_ament_copyright-release/archive/release/foxy/picknik_ament_copyright/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "c5d8bd85234f3480de334143c6f4248d5ed2fa1959561e3103b39f1bdc9914a5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-copyright ];

  meta = {
    description = ''Check PickNik-specific copyright headers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
