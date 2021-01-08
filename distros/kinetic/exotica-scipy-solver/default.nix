
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-exotica-scipy-solver";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_scipy_solver/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "b5ea432b8c71ca7bbb3e8f5739683d1e812c1b39bc8582be4639dbe04055f1ee";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core pythonPackages.numpy pythonPackages.scipy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SciPy-based Python solvers for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
