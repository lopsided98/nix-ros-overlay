
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python, ompl }:
buildRosPackage {
  pname = "ros-noetic-exotica-ompl-solver";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_ompl_solver/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "88d6418dd0dac08307b2e982c670a614b11bbd6a2b6a5fb2ccc57fcc8860d4e4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ exotica-core exotica-python ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Exotica solvers based on the Open Motion Planning Libary (OMPL)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
