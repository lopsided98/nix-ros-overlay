
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-exotica-scipy-solver";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_scipy_solver/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "88f1f1c4b71a3e0714b0467ad58afebf880cdb2151d6ee30252493ead2eabe9a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core python3Packages.numpy python3Packages.scipy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SciPy-based Python solvers for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
