
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python, ompl }:
buildRosPackage {
  pname = "ros-kinetic-exotica-ompl-solver";
  version = "5.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_ompl_solver/5.1.3-1.tar.gz";
    name = "5.1.3-1.tar.gz";
    sha256 = "37c5e45f430e8b6fb18a18cdf91931cc6c2d75e629011499187bdb0a47887826";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core exotica-python ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Exotica solvers based on the Open Motion Planning Libary (OMPL)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
