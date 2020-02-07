
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python, ompl }:
buildRosPackage {
  pname = "ros-melodic-exotica-ompl-solver";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_ompl_solver/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "704142289766a06eefd6bc3a02ba414919c80bd0fc28e948fef60975cdc0046d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core exotica-python ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Exotica solvers based on the Open Motion Planning Libary (OMPL)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
