
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-exotica-scipy-solver";
  version = "6.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_scipy_solver/6.0.1-1.tar.gz";
    name = "6.0.1-1.tar.gz";
    sha256 = "9c893f04fde61da029beb5477c9d7684a792be46f76024ff6997b6445e0f2a42";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core python3Packages.numpy python3Packages.scipy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SciPy-based Python solvers for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
