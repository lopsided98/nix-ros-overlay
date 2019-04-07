
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-core, catkin }:
buildRosPackage {
  pname = "ros-melodic-exotica-aico-solver";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_aico_solver/5.0.0-0.tar.gz;
    sha256 = "9c25ea0be3ab138229ba6c7dd74b518c2b317a642168a6f277e46092b9eeae35";
  };

  buildInputs = [ exotica-core ];
  propagatedBuildInputs = [ exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of the Approximate Inference Control algorithm (AICO)'';
    #license = lib.licenses.BSD;
  };
}
