
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, catkin, exotica-core, exotica-python }:
buildRosPackage {
  pname = "ros-kinetic-exotica-core-task-maps";
  version = "5.0.0";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_core_task_maps/5.0.0-0.tar.gz";
    name = "5.0.0-0.tar.gz";
    sha256 = "a418a7fbc9f792628c166a655fcdcac930857f7e39b973cf01516e74e87b43a0";
  };

  buildType = "catkin";
  buildInputs = [ exotica-python geometry-msgs exotica-core ];
  propagatedBuildInputs = [ exotica-python geometry-msgs exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common taskmaps provided with EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
