
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-cartpole-dynamics-solver, exotica-double-integrator-dynamics-solver, exotica-pendulum-dynamics-solver, exotica-pinocchio-dynamics-solver, exotica-quadrotor-dynamics-solver }:
buildRosPackage {
  pname = "ros-noetic-exotica-dynamics-solvers";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_dynamics_solvers/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "8b5857927f5f082ca115a3a4d9087621d3830e152cc5138b926e882128a25876";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-cartpole-dynamics-solver exotica-double-integrator-dynamics-solver exotica-pendulum-dynamics-solver exotica-pinocchio-dynamics-solver exotica-quadrotor-dynamics-solver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for all dynamics solvers bundled with core EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
