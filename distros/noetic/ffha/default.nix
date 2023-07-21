
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, catkin, flex, gawk, mk, rosbuild, roslib, rospack }:
buildRosPackage {
  pname = "ros-noetic-ffha";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/ffha/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "a44408fb0207b6b2a804daa049606a5b920ae0d11ead187b223dbb1212c639ee";
  };

  buildType = "catkin";
  buildInputs = [ bison catkin flex gawk mk rosbuild roslib rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)'';
    license = with lib.licenses; [ "GPL" ];
  };
}
