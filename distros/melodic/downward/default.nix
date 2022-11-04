
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, gawk, python, rostest, time }:
buildRosPackage {
  pname = "ros-melodic-downward";
  version = "2.1.24-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/downward/2.1.24-2.tar.gz";
    name = "2.1.24-2.tar.gz";
    sha256 = "9fe3d8f1499291060044573cdd470514331ebe1f4297b3c8de8eede9a49959ed";
  };

  buildType = "catkin";
  buildInputs = [ bison cacert catkin flex python rostest ];
  propagatedBuildInputs = [ gawk time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    license = with lib.licenses; [ "GPL" ];
  };
}
