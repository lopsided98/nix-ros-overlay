
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, exotica-core, exotica-python, geometry-msgs, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-exotica-core-task-maps";
  version = "5.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_core_task_maps/5.1.3-1.tar.gz";
    name = "5.1.3-1.tar.gz";
    sha256 = "7907f65456f3e72ae98dd38c4169696aea15c8ea453d2220f102b244d522862a";
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
