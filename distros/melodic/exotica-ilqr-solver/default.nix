
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python }:
buildRosPackage {
  pname = "ros-melodic-exotica-ilqr-solver";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_ilqr_solver/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "77e2f28159e77ccf37e4b88696682ab05232697588f64039c2dba3182b8c9692";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ exotica-core exotica-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ILQR Solver (Li and Todorov, 2004)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
