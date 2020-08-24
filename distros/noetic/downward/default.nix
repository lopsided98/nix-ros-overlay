
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, gawk, python3, rostest, time }:
buildRosPackage {
  pname = "ros-noetic-downward";
  version = "2.1.20-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/downward/2.1.20-1.tar.gz";
    name = "2.1.20-1.tar.gz";
    sha256 = "de8a2bbbc147b9534b97ad9edfa8c496e05f1baaf90adb93468be7c963784aa4";
  };

  buildType = "catkin";
  buildInputs = [ bison cacert flex python3 rostest ];
  propagatedBuildInputs = [ gawk time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
