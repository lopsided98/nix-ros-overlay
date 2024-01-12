
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core }:
buildRosPackage {
  pname = "ros-noetic-exotica-aico-solver";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_aico_solver/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "8c868d4729ae7b7d00eef65fd4f9ab60bf97e1321f39d0583dfaff92754e0e3b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of the Approximate Inference Control algorithm (AICO)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
