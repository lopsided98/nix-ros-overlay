
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core }:
buildRosPackage {
  pname = "ros-melodic-exotica-aico-solver";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_aico_solver/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "511627d7c2c811f3a189c91ffd4b33f37f368dd6be00d2522332ed1a7cd6455d";
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
