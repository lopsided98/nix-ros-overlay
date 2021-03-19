
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-exotica-scipy-solver";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_scipy_solver/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "7f4a0d6c55baadf49abac767620e3ada2204693487d743266cf38d6342c9abcf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core python3Packages.numpy python3Packages.scipy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SciPy-based Python solvers for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
