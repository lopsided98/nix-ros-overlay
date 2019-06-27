
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, mk, catkin, rosbuild, flex, bison, roslib, gawk }:
buildRosPackage {
  pname = "ros-melodic-ffha";
  version = "2.1.12-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/ffha/2.1.12-2.tar.gz;
    sha256 = "c22bfa659b15b978f4e914fb8139669cf897bd661b98a973ec9022aa453ef271";
  };

  buildInputs = [ rospack mk rosbuild gawk flex roslib bison ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
