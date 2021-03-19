
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-cartpole-dynamics-solver, exotica-double-integrator-dynamics-solver, exotica-pendulum-dynamics-solver, exotica-pinocchio-dynamics-solver, exotica-quadrotor-dynamics-solver }:
buildRosPackage {
  pname = "ros-melodic-exotica-dynamics-solvers";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_dynamics_solvers/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "6844ab99905b9f6e7fd7f0f7fb3670913caac4a57806de36ad09ecf099c81312";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-cartpole-dynamics-solver exotica-double-integrator-dynamics-solver exotica-pendulum-dynamics-solver exotica-pinocchio-dynamics-solver exotica-quadrotor-dynamics-solver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for all dynamics solvers bundled with core EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
