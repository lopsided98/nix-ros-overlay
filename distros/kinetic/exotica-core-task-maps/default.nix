
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, exotica-collision-scene-fcl-latest, exotica-core, exotica-python, geometry-msgs, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-exotica-core-task-maps";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_core_task_maps/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "a0cc7f5a034cde25eebf8238004489702f012a8441000c9f6d31d7ed7d49a13b";
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
