
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, exotica-core, exotica-python, geometry-msgs, rosunit }:
buildRosPackage {
  pname = "ros-melodic-exotica-core-task-maps";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_core_task_maps/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "69ad78f397ed4ca35cf13e7b06e5672e4dc537a4325c4313953fa2b36ca42180";
  };

  buildType = "catkin";
  buildInputs = [ eigen-conversions ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ exotica-core exotica-python geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common taskmaps provided with EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
