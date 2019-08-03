
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, rostest, flex, cacert, bison, time, gawk }:
buildRosPackage {
  pname = "ros-kinetic-downward";
  version = "2.1.13-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/downward/2.1.13-1.tar.gz;
    sha256 = "0defa3639757c5a7528d52db4ec483544d85262788b3d29fd63a07a1453acf18";
  };

  buildInputs = [ python gawk rostest flex cacert time bison ];
  propagatedBuildInputs = [ time gawk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
