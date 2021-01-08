
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-exotica-scipy-solver";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_scipy_solver/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "d536d90050bee919a48926bed1aa91d232cff74737ce5cff9856b3937464c179";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core pythonPackages.numpy pythonPackages.scipy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SciPy-based Python solvers for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
