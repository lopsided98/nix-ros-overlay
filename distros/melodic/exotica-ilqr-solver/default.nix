
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python }:
buildRosPackage {
  pname = "ros-melodic-exotica-ilqr-solver";
  version = "5.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_ilqr_solver/5.1.3-3.tar.gz";
    name = "5.1.3-3.tar.gz";
    sha256 = "e5a0298a4a186bbe0d60b03c6dd7412457061955e9265c1c85b5d680079d6859";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core exotica-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ILQR Solver (Li and Todorov, 2004)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
