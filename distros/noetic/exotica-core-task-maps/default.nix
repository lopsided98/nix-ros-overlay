
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, exotica-collision-scene-fcl-latest, exotica-core, exotica-python, geometry-msgs, rosunit }:
buildRosPackage {
  pname = "ros-noetic-exotica-core-task-maps";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_core_task_maps/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "0da5ac478efdaa7523c292c1332139d33b948a4df6297e4324ca9d142fbf45aa";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen-conversions ];
  checkInputs = [ exotica-collision-scene-fcl-latest rosunit ];
  propagatedBuildInputs = [ exotica-core exotica-python geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common taskmaps provided with EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
