
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-exotica-scipy-solver";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_scipy_solver/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "fb1f96bc8288ad7251f4b411316150ad3f8d863b94f6cd4f70d0aa4de67f2a4d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core pythonPackages.numpy pythonPackages.scipy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SciPy-based Python solvers for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
