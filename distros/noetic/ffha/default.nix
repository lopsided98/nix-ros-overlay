
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, catkin, flex, gawk, mk, rosbuild, roslib, rospack }:
buildRosPackage {
  pname = "ros-noetic-ffha";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/ffha/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "b7bdf592728442913a353d11484a10f5d4f6308219ff13ad010b3630d241b739";
  };

  buildType = "catkin";
  buildInputs = [ bison catkin flex gawk mk rosbuild roslib rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)";
    license = with lib.licenses; [ "GPL" ];
  };
}
