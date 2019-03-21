
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-core, catkin }:
buildRosPackage {
  pname = "ros-kinetic-exotica-aico-solver";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_aico_solver/5.0.0-0.tar.gz;
    sha256 = "045c7102c2b9756890ea7def52b0072ec44f1432850ef02f05ada35d2e855e20";
  };

  propagatedBuildInputs = [ exotica-core ];
  nativeBuildInputs = [ exotica-core catkin ];

  meta = {
    description = ''Implementation of the Approximate Inference Control algorithm (AICO)'';
    #license = lib.licenses.BSD;
  };
}
