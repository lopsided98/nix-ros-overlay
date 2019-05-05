
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-python, exotica-core, catkin, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-exotica-core-task-maps";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_core_task_maps/5.0.0-0.tar.gz;
    sha256 = "3a3613b62c0ad3be115ad5c6214e3ed1d8b55280d5bd7b20555ad4585d3b0b49";
  };

  buildInputs = [ exotica-python exotica-core geometry-msgs ];
  propagatedBuildInputs = [ exotica-python exotica-core geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common taskmaps provided with EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
