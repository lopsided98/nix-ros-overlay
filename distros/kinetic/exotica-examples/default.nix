
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-aico-solver, exotica-collision-scene-fcl, exotica-core, exotica-core-task-maps, exotica-ik-solver, exotica-ompl-solver, exotica-python, exotica-time-indexed-rrt-connect-solver, exotica-val-description, geometry-msgs, interactive-markers, python-orocos-kdl, robot-state-publisher, rostest, rviz, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-exotica-examples";
  version = "5.0.0";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_examples/5.0.0-0.tar.gz";
    name = "5.0.0-0.tar.gz";
    sha256 = "30a9b871c1d2de18ddca98f1f18b469d42c7d2eaa865b98eb201d691eebd012c";
  };

  buildType = "catkin";
  checkInputs = [ exotica-val-description rostest ];
  propagatedBuildInputs = [ exotica-aico-solver exotica-collision-scene-fcl exotica-core exotica-core-task-maps exotica-ik-solver exotica-ompl-solver exotica-python exotica-time-indexed-rrt-connect-solver geometry-msgs interactive-markers python-orocos-kdl robot-state-publisher rviz sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing examples and system tests for EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
