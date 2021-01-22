
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python, ompl }:
buildRosPackage {
  pname = "ros-kinetic-exotica-ompl-solver";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_ompl_solver/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "6a164d018f0efe47014b58168d60b00bc1360cf0e98918c1d1de0d78a578762d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core exotica-python ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Exotica solvers based on the Open Motion Planning Libary (OMPL)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
