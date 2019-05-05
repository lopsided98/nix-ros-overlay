
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-val-description, exotica-ik-solver, exotica-collision-scene-fcl, python-orocos-kdl, sensor-msgs, catkin, exotica-time-indexed-rrt-connect-solver, exotica-aico-solver, exotica-ompl-solver, rostest, rviz, interactive-markers, visualization-msgs, robot-state-publisher, exotica-python, exotica-core, exotica-core-task-maps, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-exotica-examples";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_examples/5.0.0-0.tar.gz;
    sha256 = "29b1331e8e4ea4183064803a44e6e438b638c4d5c1c4927ea3d93d79dd29c325";
  };

  buildInputs = [ exotica-ik-solver sensor-msgs exotica-aico-solver exotica-python exotica-core exotica-core-task-maps ];
  checkInputs = [ rostest exotica-val-description ];
  propagatedBuildInputs = [ exotica-ik-solver geometry-msgs python-orocos-kdl sensor-msgs exotica-time-indexed-rrt-connect-solver exotica-aico-solver exotica-ompl-solver rviz interactive-markers robot-state-publisher visualization-msgs exotica-python exotica-core exotica-core-task-maps exotica-collision-scene-fcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing examples and system tests for EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
