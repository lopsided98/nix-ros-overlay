
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, pinocchio, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-exotica-pinocchio-dynamics-solver";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_pinocchio_dynamics_solver/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "1b5e040f33080b2277baf0fca1818dde4bbf280c8b855c955e28f779e9d24579";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core pinocchio roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dynamics solver plug-in using Pinocchio for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
