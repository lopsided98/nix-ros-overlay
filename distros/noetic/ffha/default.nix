
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, catkin, flex, gawk, mk, rosbuild, roslib, rospack }:
buildRosPackage {
  pname = "ros-noetic-ffha";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/ffha/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "af2fd1ccfdd08d4ff320e26382410b845d1a70a61391dfa565abf979b4fabe1b";
  };

  buildType = "catkin";
  buildInputs = [ bison catkin flex gawk mk rosbuild roslib rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)";
    license = with lib.licenses; [ "GPL" ];
  };
}
