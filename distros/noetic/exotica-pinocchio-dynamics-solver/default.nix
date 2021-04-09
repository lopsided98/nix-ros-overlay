
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, pinocchio, roscpp }:
buildRosPackage {
  pname = "ros-noetic-exotica-pinocchio-dynamics-solver";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_pinocchio_dynamics_solver/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "6f34d0014013026de5d84d11fc1e5d48c3131c3edcfaa460887a1fd5ba5e4d33";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core pinocchio roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dynamics solver plug-in using Pinocchio for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
