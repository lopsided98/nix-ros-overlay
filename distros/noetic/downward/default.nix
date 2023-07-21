
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, gawk, python3, rostest, time }:
buildRosPackage {
  pname = "ros-noetic-downward";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/downward/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "a2d14264c7315fca26be1f99552df6de659e67afad4f9356e05f9c205f236a0c";
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
