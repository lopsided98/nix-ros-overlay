
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, mk, catkin, rosbuild, flex, bison, roslib, gawk }:
buildRosPackage {
  pname = "ros-melodic-ffha";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/ffha/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "b23654d081f84268f3d73686370c30500192ada327c821dd004f891ac98a706f";
  };

  buildType = "catkin";
  buildInputs = [ rospack mk rosbuild gawk flex roslib bison ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
