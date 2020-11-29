
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, roscpp }:
buildRosPackage {
  pname = "ros-noetic-exotica-quadrotor-dynamics-solver";
  version = "6.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_quadrotor_dynamics_solver/6.0.1-1.tar.gz";
    name = "6.0.1-1.tar.gz";
    sha256 = "6b516b18dad4084936d6a3ccff685195b68d7a8136949a8a4f813dac86dc5062";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Quadrotor dynamics solver plug-in for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
