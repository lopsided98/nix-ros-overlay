
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, ompl }:
buildRosPackage {
  pname = "ros-noetic-exotica-ompl-control-solver";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_ompl_control_solver/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "507ed2bf4bc516fa619a8db8445635823ba34c7d8a2680f5493e9f81089a21fa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kinodynamic Control Solvers from OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
