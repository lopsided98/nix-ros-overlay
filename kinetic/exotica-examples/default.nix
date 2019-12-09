
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-python, sensor-msgs, geometry-msgs, interactive-markers, robot-state-publisher, exotica-ik-solver, exotica-val-description, exotica-ompl-solver, catkin, exotica-aico-solver, python-orocos-kdl, exotica-time-indexed-rrt-connect-solver, exotica-core-task-maps, visualization-msgs, exotica-core, rviz, exotica-collision-scene-fcl, rostest }:
buildRosPackage {
  pname = "ros-kinetic-exotica-examples";
  version = "5.0.0";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_examples/5.0.0-0.tar.gz";
    name = "5.0.0-0.tar.gz";
    sha256 = "30a9b871c1d2de18ddca98f1f18b469d42c7d2eaa865b98eb201d691eebd012c";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs exotica-core exotica-ik-solver exotica-aico-solver exotica-core-task-maps exotica-python ];
  checkInputs = [ exotica-val-description rostest ];
  propagatedBuildInputs = [ exotica-python sensor-msgs geometry-msgs interactive-markers robot-state-publisher exotica-ik-solver exotica-ompl-solver exotica-aico-solver python-orocos-kdl exotica-time-indexed-rrt-connect-solver exotica-core-task-maps visualization-msgs exotica-core rviz exotica-collision-scene-fcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing examples and system tests for EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
