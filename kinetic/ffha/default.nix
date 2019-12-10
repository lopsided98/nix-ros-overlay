
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, catkin, flex, gawk, mk, rosbuild, roslib, rospack }:
buildRosPackage {
  pname = "ros-kinetic-ffha";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/ffha/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "1e342d35e5a6a2e9a03d02e6856ad9a73ed7c22aaddce73ce3a4a0bbaee524a4";
  };

  buildType = "catkin";
  buildInputs = [ bison flex gawk mk rosbuild roslib rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
