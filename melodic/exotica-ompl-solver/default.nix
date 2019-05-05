
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-python, exotica-core, catkin, ompl }:
buildRosPackage {
  pname = "ros-melodic-exotica-ompl-solver";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_ompl_solver/5.0.0-0.tar.gz;
    sha256 = "07851ceb7d6c1cae605a7ba07157219995fcb3e1358f65c62daf96e73012ff26";
  };

  buildInputs = [ exotica-python exotica-core ompl ];
  propagatedBuildInputs = [ exotica-python exotica-core ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Exotica solvers based on the Open Motion Planning Libary (OMPL)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
