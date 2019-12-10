
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-aico-solver, exotica-collision-scene-fcl, exotica-core, exotica-core-task-maps, exotica-ik-solver, exotica-ompl-solver, exotica-python, exotica-time-indexed-rrt-connect-solver, exotica-val-description, geometry-msgs, interactive-markers, python-orocos-kdl, robot-state-publisher, rostest, rviz, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-exotica-examples";
  version = "5.0.0";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_examples/5.0.0-0.tar.gz";
    name = "5.0.0-0.tar.gz";
    sha256 = "29b1331e8e4ea4183064803a44e6e438b638c4d5c1c4927ea3d93d79dd29c325";
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
