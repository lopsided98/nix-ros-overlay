
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, gawk, python, rostest, time }:
buildRosPackage {
  pname = "ros-kinetic-downward";
  version = "2.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/downward/2.1.15-1.tar.gz";
    name = "2.1.15-1.tar.gz";
    sha256 = "2b6bdc5eae55a2cf6606212a209a25d339891337a0148ecc4870396c328cdc49";
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
