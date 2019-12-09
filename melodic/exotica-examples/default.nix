
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-python, sensor-msgs, geometry-msgs, interactive-markers, robot-state-publisher, exotica-ik-solver, exotica-val-description, exotica-ompl-solver, catkin, exotica-aico-solver, python-orocos-kdl, exotica-time-indexed-rrt-connect-solver, exotica-core-task-maps, visualization-msgs, exotica-core, rviz, exotica-collision-scene-fcl, rostest }:
buildRosPackage {
  pname = "ros-melodic-exotica-examples";
  version = "5.0.0";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_examples/5.0.0-0.tar.gz";
    name = "5.0.0-0.tar.gz";
    sha256 = "29b1331e8e4ea4183064803a44e6e438b638c4d5c1c4927ea3d93d79dd29c325";
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
