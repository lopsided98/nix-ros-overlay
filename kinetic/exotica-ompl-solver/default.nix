
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ompl, catkin, exotica-core, exotica-python }:
buildRosPackage {
  pname = "ros-kinetic-exotica-ompl-solver";
  version = "5.0.0";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_ompl_solver/5.0.0-0.tar.gz";
    name = "5.0.0-0.tar.gz";
    sha256 = "31f73a27db8af3a3f662b5fba756411e41397a2e5c51b9260f4e868416a688fe";
  };

  buildType = "catkin";
  buildInputs = [ exotica-python ompl exotica-core ];
  propagatedBuildInputs = [ exotica-python ompl exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Exotica solvers based on the Open Motion Planning Libary (OMPL)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
