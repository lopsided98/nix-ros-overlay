
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, roscpp }:
buildRosPackage {
  pname = "ros-noetic-exotica-quadrotor-dynamics-solver";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_quadrotor_dynamics_solver/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "af23d11cc5d3da7266496da1317270f2b5294f5ca7c63d0b6eefda9d9b5694de";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Quadrotor dynamics solver plug-in for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
