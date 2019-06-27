
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, rostest, flex, cacert, bison, time, gawk }:
buildRosPackage {
  pname = "ros-kinetic-downward";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/downward/2.1.12-1.tar.gz;
    sha256 = "2ac1de9b55cc6df5f1ab40e0066f4ce7ae1cac1fafa65c2bf7493b383c14d71d";
  };

  buildInputs = [ python gawk rostest flex cacert time bison ];
  propagatedBuildInputs = [ time gawk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
