
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-aico-solver, exotica-collision-scene-fcl-latest, exotica-core, exotica-core-task-maps, exotica-ik-solver, exotica-levenberg-marquardt-solver, exotica-ompl-solver, exotica-python, exotica-time-indexed-rrt-connect-solver }:
buildRosPackage {
  pname = "ros-melodic-exotica";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "8eade849573813a605c9882788a18aa09df0dc086280d8f4f34bd465edf212cc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-aico-solver exotica-collision-scene-fcl-latest exotica-core exotica-core-task-maps exotica-ik-solver exotica-levenberg-marquardt-solver exotica-ompl-solver exotica-python exotica-time-indexed-rrt-connect-solver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Extensible Optimization Toolset (EXOTica) is a library for defining problems for robot motion planning. This package serves similar to a metapackage and contains dependencies onto all core-released exotica packages. It also builds the documentation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
