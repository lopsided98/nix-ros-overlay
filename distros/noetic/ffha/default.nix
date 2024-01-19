
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, catkin, flex, gawk, mk, rosbuild, roslib, rospack }:
buildRosPackage {
  pname = "ros-noetic-ffha";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/ffha/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "f41e364293398af80c924dbc218819628785aabe76c31377b9e67ebc2aa6b4f4";
  };

  buildType = "catkin";
  buildInputs = [ bison catkin flex gawk mk rosbuild roslib rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)'';
    license = with lib.licenses; [ "GPL" ];
  };
}
