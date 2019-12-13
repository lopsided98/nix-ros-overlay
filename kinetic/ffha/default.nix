
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, catkin, flex, gawk, mk, rosbuild, roslib, rospack }:
buildRosPackage {
  pname = "ros-kinetic-ffha";
  version = "2.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/ffha/2.1.15-1.tar.gz";
    name = "2.1.15-1.tar.gz";
    sha256 = "62ba2afcc929176a462da92fe597e2ad42126d6534bbb3d3b8802aa944039a26";
  };

  buildType = "catkin";
  buildInputs = [ bison flex gawk mk rosbuild roslib rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
