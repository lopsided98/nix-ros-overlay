
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lkh-solver, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-glkh-solver";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/crigroup/lkh-release/archive/release/kinetic/glkh_solver/0.1.1-0.tar.gz;
    sha256 = "178edf5606555aea5a79c12d78fc03d13398f6defb0f309ebea082f8cd8d9cb1";
  };

  propagatedBuildInputs = [ lkh-solver roscpp ];
  nativeBuildInputs = [ lkh-solver catkin roscpp ];

  meta = {
    description = ''ROS package for solving the Generalized Traveling Salesman Problem using
    the Lin–Kernighan heuristic.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
