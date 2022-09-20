
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-exotica-scipy-solver";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_scipy_solver/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "e8ab625926e85331b7926c49e3849f636b7d39a95e6a6662eec83c16ee5664b4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ exotica-core pythonPackages.numpy pythonPackages.scipy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SciPy-based Python solvers for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
