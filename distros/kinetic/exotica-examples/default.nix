
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-aico-solver, exotica-cartpole-dynamics-solver, exotica-collision-scene-fcl-latest, exotica-core, exotica-core-task-maps, exotica-ddp-solver, exotica-double-integrator-dynamics-solver, exotica-ik-solver, exotica-ilqg-solver, exotica-ilqr-solver, exotica-levenberg-marquardt-solver, exotica-ompl-control-solver, exotica-ompl-solver, exotica-pendulum-dynamics-solver, exotica-pinocchio-dynamics-solver, exotica-python, exotica-quadrotor-dynamics-solver, exotica-scipy-solver, exotica-time-indexed-rrt-connect-solver, exotica-val-description, geometry-msgs, interactive-markers, robot-state-publisher, rostest, rosunit, rviz, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-exotica-examples";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_examples/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "71d5e9eab259c26c5dae5a07eb1364f2024de5da7fc11aaff1fb78cf3209a944";
  };

  buildType = "catkin";
  checkInputs = [ exotica-val-description rostest rosunit ];
  propagatedBuildInputs = [ exotica-aico-solver exotica-cartpole-dynamics-solver exotica-collision-scene-fcl-latest exotica-core exotica-core-task-maps exotica-ddp-solver exotica-double-integrator-dynamics-solver exotica-ik-solver exotica-ilqg-solver exotica-ilqr-solver exotica-levenberg-marquardt-solver exotica-ompl-control-solver exotica-ompl-solver exotica-pendulum-dynamics-solver exotica-pinocchio-dynamics-solver exotica-python exotica-quadrotor-dynamics-solver exotica-scipy-solver exotica-time-indexed-rrt-connect-solver geometry-msgs interactive-markers robot-state-publisher rviz sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing examples and system tests for EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
