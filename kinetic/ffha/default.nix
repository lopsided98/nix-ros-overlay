
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, mk, catkin, rosbuild, flex, bison, roslib, gawk }:
buildRosPackage {
  pname = "ros-kinetic-ffha";
  version = "2.1.13-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/ffha/2.1.13-1.tar.gz;
    sha256 = "aa8f9dd43b85f643b539bcb3d0299a2d27f7e455388a1017fe98d11908baa34d";
  };

  buildInputs = [ rospack mk rosbuild gawk flex roslib bison ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
