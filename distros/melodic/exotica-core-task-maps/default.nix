
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, exotica-core, exotica-python, geometry-msgs, rosunit }:
buildRosPackage {
  pname = "ros-melodic-exotica-core-task-maps";
  version = "5.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_core_task_maps/5.1.3-3.tar.gz";
    name = "5.1.3-3.tar.gz";
    sha256 = "cb9230100c4a7a2f0ccb68b713bc5cecf570beb887025b18943353fac54515db";
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
