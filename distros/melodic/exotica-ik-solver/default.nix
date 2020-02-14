
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core }:
buildRosPackage {
  pname = "ros-melodic-exotica-ik-solver";
  version = "5.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_ik_solver/5.1.3-3.tar.gz";
    name = "5.1.3-3.tar.gz";
    sha256 = "8999b2bcbb97a6cc6ebc5b0e3b5ff8b28d154a11d86d79cefad8512a9bc97a1f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Pseudo-inverse unconstrained end-pose solver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
