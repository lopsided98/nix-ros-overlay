
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-aico-solver, exotica-collision-scene-fcl-latest, exotica-core, exotica-core-task-maps, exotica-ik-solver, exotica-levenberg-marquardt-solver, exotica-ompl-solver, exotica-python, exotica-time-indexed-rrt-connect-solver }:
buildRosPackage {
  pname = "ros-noetic-exotica";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "8e24e79d632d1562e474d7efa50724ae525fb321912957c8b10fe77174eaca1c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-aico-solver exotica-collision-scene-fcl-latest exotica-core exotica-core-task-maps exotica-ik-solver exotica-levenberg-marquardt-solver exotica-ompl-solver exotica-python exotica-time-indexed-rrt-connect-solver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Extensible Optimization Toolset (EXOTica) is a library for defining problems for robot motion planning. This package serves similar to a metapackage and contains dependencies onto all core-released exotica packages. It also builds the documentation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
