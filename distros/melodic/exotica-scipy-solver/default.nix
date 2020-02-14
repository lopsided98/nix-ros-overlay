
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-exotica-scipy-solver";
  version = "5.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_scipy_solver/5.1.3-3.tar.gz";
    name = "5.1.3-3.tar.gz";
    sha256 = "8fb8a94b7adea8edc0f68b6574abb48089fed5b02551a040fa7dc0d1cab585c0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core pythonPackages.numpy pythonPackages.scipy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SciPy-based Python solvers for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
