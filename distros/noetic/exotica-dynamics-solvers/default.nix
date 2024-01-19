
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-cartpole-dynamics-solver, exotica-double-integrator-dynamics-solver, exotica-pendulum-dynamics-solver, exotica-pinocchio-dynamics-solver, exotica-quadrotor-dynamics-solver }:
buildRosPackage {
  pname = "ros-noetic-exotica-dynamics-solvers";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_dynamics_solvers/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "91c483689f74df47d811b385156a14d06d7f984346f1d0b998e37265314b185b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ exotica-cartpole-dynamics-solver exotica-double-integrator-dynamics-solver exotica-pendulum-dynamics-solver exotica-pinocchio-dynamics-solver exotica-quadrotor-dynamics-solver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for all dynamics solvers bundled with core EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
