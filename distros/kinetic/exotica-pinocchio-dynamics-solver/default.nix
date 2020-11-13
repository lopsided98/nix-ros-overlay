
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, pinocchio, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-exotica-pinocchio-dynamics-solver";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_pinocchio_dynamics_solver/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "b8e26f57ed1408395a53c1057999ddad0ea4fc6ff178ded355e6b8dbb600be0a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core pinocchio roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dynamics solver plug-in using Pinocchio for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
