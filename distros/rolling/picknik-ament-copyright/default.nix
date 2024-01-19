
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-picknik-ament-copyright";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_ament_copyright-release/archive/release/rolling/picknik_ament_copyright/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "b8fd58b2a2c3fb710ecc6bd1c755114aba13a8e9b2f459b6cb39ff344b8d69c4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-copyright ];

  meta = {
    description = ''Check PickNik-specific copyright headers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
