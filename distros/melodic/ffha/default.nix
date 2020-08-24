
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, catkin, flex, gawk, mk, rosbuild, roslib, rospack }:
buildRosPackage {
  pname = "ros-melodic-ffha";
  version = "2.1.21-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/ffha/2.1.21-2.tar.gz";
    name = "2.1.21-2.tar.gz";
    sha256 = "256cfa6be056d21c445b0a3b29f49ebfdd3ed2c7ba3991abe27c4bd7b2b37869";
  };

  buildType = "catkin";
  buildInputs = [ bison flex gawk mk rosbuild roslib rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
