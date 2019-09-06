
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, rostest, flex, cacert, bison, time, gawk }:
buildRosPackage {
  pname = "ros-melodic-downward";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/downward/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "01a39d2f69d9cdcc78ebe35b269aaca9acc5db08d9940b88d2f392cb6be88467";
  };

  buildType = "catkin";
  buildInputs = [ python gawk rostest flex cacert time bison ];
  propagatedBuildInputs = [ time gawk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
