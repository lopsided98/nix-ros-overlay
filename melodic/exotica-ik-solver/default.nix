
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-core, catkin }:
buildRosPackage {
  pname = "ros-melodic-exotica-ik-solver";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_ik_solver/5.0.0-0.tar.gz;
    sha256 = "6f5acb6bf7625497c93ce8204bd5bb8eb05441eb32973da328e34bd0cbfa27f5";
  };

  propagatedBuildInputs = [ exotica-core ];
  nativeBuildInputs = [ exotica-core catkin ];

  meta = {
    description = ''Pseudo-inverse unconstrained end-pose solver'';
    #license = lib.licenses.BSD;
  };
}
