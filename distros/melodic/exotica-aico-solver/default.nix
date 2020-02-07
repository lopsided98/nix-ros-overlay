
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core }:
buildRosPackage {
  pname = "ros-melodic-exotica-aico-solver";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_aico_solver/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "fd9d5e9f071ac3cb9c545b59a1409c53cfc2b92e0844cd2c847fdb1d05c6732a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of the Approximate Inference Control algorithm (AICO)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
