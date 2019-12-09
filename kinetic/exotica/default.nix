
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-collision-scene-fcl-latest, exotica-core, exotica-ik-solver, exotica-ompl-solver, catkin, exotica-aico-solver, exotica-time-indexed-rrt-connect-solver, exotica-core-task-maps, exotica-python, exotica-levenberg-marquardt-solver, exotica-collision-scene-fcl }:
buildRosPackage {
  pname = "ros-kinetic-exotica";
  version = "5.0.0";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica/5.0.0-0.tar.gz";
    name = "5.0.0-0.tar.gz";
    sha256 = "154e8c189a3d75ee7bc4f6f463478fc4eb620a555bf10d644c901c913c756771";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-python exotica-collision-scene-fcl-latest exotica-ik-solver exotica-ompl-solver exotica-aico-solver exotica-time-indexed-rrt-connect-solver exotica-core-task-maps exotica-core exotica-levenberg-marquardt-solver exotica-collision-scene-fcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Extensible Optimization Toolset (EXOTica) is a library for defining problems for robot motion planning. This package serves similar to a metapackage and contains dependencies onto all core-released exotica packages. It also builds the documentation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
