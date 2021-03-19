
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, pinocchio, roscpp }:
buildRosPackage {
  pname = "ros-noetic-exotica-pinocchio-dynamics-solver";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_pinocchio_dynamics_solver/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "607ca0cdf507638bd2c582650955a3b60600a19346ed5cc4f4fbebe750135296";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core pinocchio roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dynamics solver plug-in using Pinocchio for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
