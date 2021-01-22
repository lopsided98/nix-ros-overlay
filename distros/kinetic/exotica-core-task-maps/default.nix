
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, exotica-collision-scene-fcl-latest, exotica-core, exotica-python, geometry-msgs, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-exotica-core-task-maps";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_core_task_maps/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "dcc79441451db57a46296c7a744d5f9f83b57fcdea7952e530a637f8758d71e3";
  };

  buildType = "catkin";
  buildInputs = [ eigen-conversions ];
  checkInputs = [ exotica-collision-scene-fcl-latest rosunit ];
  propagatedBuildInputs = [ exotica-core exotica-python geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common taskmaps provided with EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
