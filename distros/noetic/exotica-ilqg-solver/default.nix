
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python }:
buildRosPackage {
  pname = "ros-noetic-exotica-ilqg-solver";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_ilqg_solver/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "ade567828ea1045ec1eb7e5e068563d8abfcb50e24101bef6cf6fc88e018890e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core exotica-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ILQG Solver (Todorov and Li, 2004)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
