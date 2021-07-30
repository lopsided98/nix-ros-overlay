
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, gawk, python, rostest, time }:
buildRosPackage {
  pname = "ros-melodic-downward";
  version = "2.1.24-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/downward/2.1.24-1.tar.gz";
    name = "2.1.24-1.tar.gz";
    sha256 = "2ff442d942c92ae15b01fe6a41549dde0ad83877bafd1ae83e5a28c2431f32b2";
  };

  buildType = "catkin";
  buildInputs = [ bison cacert flex python rostest ];
  propagatedBuildInputs = [ gawk time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
