
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core }:
buildRosPackage {
  pname = "ros-melodic-exotica-ik-solver";
  version = "5.0.0";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_ik_solver/5.0.0-0.tar.gz";
    name = "5.0.0-0.tar.gz";
    sha256 = "6f5acb6bf7625497c93ce8204bd5bb8eb05441eb32973da328e34bd0cbfa27f5";
  };

  buildType = "catkin";
  buildInputs = [ exotica-core ];
  propagatedBuildInputs = [ exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Pseudo-inverse unconstrained end-pose solver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
