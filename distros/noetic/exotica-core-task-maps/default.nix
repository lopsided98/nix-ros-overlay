
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, exotica-collision-scene-fcl-latest, exotica-core, exotica-python, geometry-msgs, rosunit }:
buildRosPackage {
  pname = "ros-noetic-exotica-core-task-maps";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_core_task_maps/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "9c60b36d459145f5b8d7e13b7433c53fa75b5da352b8801f5561c401c0cd5e20";
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
