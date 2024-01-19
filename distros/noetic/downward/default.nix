
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, gawk, python3, rostest, time }:
buildRosPackage {
  pname = "ros-noetic-downward";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/downward/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "2257bbcc0cef433aeeba2ba8c257d308005ea91a1dd432eda664794de6de5e1d";
  };

  buildType = "catkin";
  buildInputs = [ bison cacert catkin flex python3 rostest ];
  propagatedBuildInputs = [ gawk time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    license = with lib.licenses; [ "GPL" ];
  };
}
