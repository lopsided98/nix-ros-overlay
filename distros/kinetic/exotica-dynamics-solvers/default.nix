
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-cartpole-dynamics-solver, exotica-double-integrator-dynamics-solver, exotica-pendulum-dynamics-solver, exotica-pinocchio-dynamics-solver, exotica-quadrotor-dynamics-solver }:
buildRosPackage {
  pname = "ros-kinetic-exotica-dynamics-solvers";
  version = "5.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_dynamics_solvers/5.1.3-1.tar.gz";
    name = "5.1.3-1.tar.gz";
    sha256 = "440c181e1317367a34ca3c637f38473de77c641f30b0b1ff401e2d5527844128";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-cartpole-dynamics-solver exotica-double-integrator-dynamics-solver exotica-pendulum-dynamics-solver exotica-pinocchio-dynamics-solver exotica-quadrotor-dynamics-solver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for all dynamics solvers bundled with core EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
