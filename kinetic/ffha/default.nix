
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, mk, catkin, rosbuild, flex, bison, roslib, gawk }:
buildRosPackage {
  pname = "ros-kinetic-ffha";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/ffha/2.1.12-1.tar.gz;
    sha256 = "bfe2d3ef9c8bd6c5ec3dc71453b4fa3565ef7aae45995a8d6c4ed47b347f7639";
  };

  buildInputs = [ rospack mk rosbuild gawk flex roslib bison ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
