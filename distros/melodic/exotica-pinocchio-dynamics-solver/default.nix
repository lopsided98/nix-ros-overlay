
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, exotica-core, pinocchio, roscpp }:
buildRosPackage {
  pname = "ros-melodic-exotica-pinocchio-dynamics-solver";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_pinocchio_dynamics_solver/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "e2fc909514d0a8eaf1272099e10ae0972da901271abd99cbc6bccf193720c5ce";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ clang exotica-core pinocchio roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dynamics solver plug-in using Pinocchio for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
