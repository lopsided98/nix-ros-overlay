
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, mk, catkin, rosbuild, gawk, flex, roslib, bison }:
buildRosPackage {
  pname = "ros-melodic-ffha";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/ffha/2.1.11-0.tar.gz;
    sha256 = "416be0691253151483d926b11df4f86f949a4e7e3b10bc505dd467e020c602fa";
  };

  nativeBuildInputs = [ gawk roslib rospack flex mk catkin rosbuild bison ];

  meta = {
    description = ''ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)'';
    #license = lib.licenses.GPL;
  };
}
