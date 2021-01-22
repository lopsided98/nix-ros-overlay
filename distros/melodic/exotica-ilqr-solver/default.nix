
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python }:
buildRosPackage {
  pname = "ros-melodic-exotica-ilqr-solver";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_ilqr_solver/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "a0c6fc203dfa9573dd400bf9903bc86bc16bb98b1e128d12e89347ed6741c26a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core exotica-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ILQR Solver (Li and Todorov, 2004)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
