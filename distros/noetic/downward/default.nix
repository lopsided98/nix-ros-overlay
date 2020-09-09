
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, gawk, python3, rostest, time }:
buildRosPackage {
  pname = "ros-noetic-downward";
  version = "2.1.21-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/downward/2.1.21-1.tar.gz";
    name = "2.1.21-1.tar.gz";
    sha256 = "791e3995112fb1af0ecc0dcae1aef28db4d9ef9a90df0e83ab3662b988d7b335";
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
