
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python }:
buildRosPackage {
  pname = "ros-kinetic-exotica-ilqg-solver";
  version = "5.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_ilqg_solver/5.1.3-1.tar.gz";
    name = "5.1.3-1.tar.gz";
    sha256 = "a39a0be4c5369350fe70be43e897016107e3eeb0289def87a714b566313d95f3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core exotica-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ILQG Solver (Todorov and Li, 2004)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
