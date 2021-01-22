
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, catkin, flex, gawk, mk, rosbuild, roslib, rospack }:
buildRosPackage {
  pname = "ros-kinetic-ffha";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/ffha/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "eaa0647977da55ede5b547dc91c85e4607d9e54e6e5eef734ce9bfe4ab191076";
  };

  buildType = "catkin";
  buildInputs = [ bison flex gawk mk rosbuild roslib rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
