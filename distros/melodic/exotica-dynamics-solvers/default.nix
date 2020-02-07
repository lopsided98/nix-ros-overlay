
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-cartpole-dynamics-solver, exotica-double-integrator-dynamics-solver, exotica-pendulum-dynamics-solver, exotica-pinocchio-dynamics-solver, exotica-quadrotor-dynamics-solver }:
buildRosPackage {
  pname = "ros-melodic-exotica-dynamics-solvers";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_dynamics_solvers/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "5ba5e9ea76413d2d21231057e962346b48d0c558a98cf5c6f544141095600839";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-cartpole-dynamics-solver exotica-double-integrator-dynamics-solver exotica-pendulum-dynamics-solver exotica-pinocchio-dynamics-solver exotica-quadrotor-dynamics-solver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for all dynamics solvers bundled with core EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
