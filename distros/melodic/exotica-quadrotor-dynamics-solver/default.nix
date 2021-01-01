
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, roscpp }:
buildRosPackage {
  pname = "ros-melodic-exotica-quadrotor-dynamics-solver";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_quadrotor_dynamics_solver/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "0fda2c61f6c92accdfb947d798f579954b3e4add028a0ad763e2069b62e4dfe6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Quadrotor dynamics solver plug-in for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
