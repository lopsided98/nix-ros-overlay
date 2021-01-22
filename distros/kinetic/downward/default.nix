
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, gawk, python, rostest, time }:
buildRosPackage {
  pname = "ros-kinetic-downward";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/downward/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "68becaa862f8a7d73a6e1bb2e07697d3e05815ef98ab4da26f984a9b6221789b";
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
