
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-aico-solver, exotica-cartpole-dynamics-solver, exotica-collision-scene-fcl-latest, exotica-core, exotica-core-task-maps, exotica-ddp-solver, exotica-double-integrator-dynamics-solver, exotica-ik-solver, exotica-ilqg-solver, exotica-ilqr-solver, exotica-levenberg-marquardt-solver, exotica-ompl-control-solver, exotica-ompl-solver, exotica-pendulum-dynamics-solver, exotica-pinocchio-dynamics-solver, exotica-python, exotica-quadrotor-dynamics-solver, exotica-scipy-solver, exotica-time-indexed-rrt-connect-solver, exotica-val-description, geometry-msgs, interactive-markers, python3Packages, robot-state-publisher, rostest, rosunit, rviz, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-exotica-examples";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_examples/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "253c541a3cb1eb6215226dd062360c131ef478065abdcde75455d25b8213d262";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ exotica-val-description rostest rosunit ];
  propagatedBuildInputs = [ exotica-aico-solver exotica-cartpole-dynamics-solver exotica-collision-scene-fcl-latest exotica-core exotica-core-task-maps exotica-ddp-solver exotica-double-integrator-dynamics-solver exotica-ik-solver exotica-ilqg-solver exotica-ilqr-solver exotica-levenberg-marquardt-solver exotica-ompl-control-solver exotica-ompl-solver exotica-pendulum-dynamics-solver exotica-pinocchio-dynamics-solver exotica-python exotica-quadrotor-dynamics-solver exotica-scipy-solver exotica-time-indexed-rrt-connect-solver geometry-msgs interactive-markers python3Packages.pykdl robot-state-publisher rviz sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing examples and system tests for EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
