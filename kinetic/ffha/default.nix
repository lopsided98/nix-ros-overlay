
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, mk, catkin, rosbuild, gawk, flex, roslib, bison }:
buildRosPackage {
  pname = "ros-kinetic-ffha";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/ffha/2.1.11-0.tar.gz;
    sha256 = "255a61ab90d1ef50d94f6efbd1dec851e81c8fc66d67cbd6cfea2a98f57b6f39";
  };

  nativeBuildInputs = [ gawk roslib rospack flex mk catkin rosbuild bison ];

  meta = {
    description = ''ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)'';
    #license = lib.licenses.GPL;
  };
}
