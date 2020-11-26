
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-aico-solver, exotica-collision-scene-fcl-latest, exotica-core, exotica-core-task-maps, exotica-ik-solver, exotica-levenberg-marquardt-solver, exotica-ompl-solver, exotica-python, exotica-time-indexed-rrt-connect-solver }:
buildRosPackage {
  pname = "ros-kinetic-exotica";
  version = "6.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica/6.0.1-1.tar.gz";
    name = "6.0.1-1.tar.gz";
    sha256 = "1ee5a9958b92514bc1eb9b114153d8b352186ecfd0e959138feffc76f345a216";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-aico-solver exotica-collision-scene-fcl-latest exotica-core exotica-core-task-maps exotica-ik-solver exotica-levenberg-marquardt-solver exotica-ompl-solver exotica-python exotica-time-indexed-rrt-connect-solver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Extensible Optimization Toolset (EXOTica) is a library for defining problems for robot motion planning. This package serves similar to a metapackage and contains dependencies onto all core-released exotica packages. It also builds the documentation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
