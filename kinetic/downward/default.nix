
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, gawk, catkin, cacert, python, time, flex, rostest }:
buildRosPackage {
  pname = "ros-kinetic-downward";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/downward/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "d1e1a2b6cf02c91b3893da2d6903b848533964ba8b1b1d13ed57beb231113ce3";
  };

  buildType = "catkin";
  buildInputs = [ bison gawk cacert python time flex rostest ];
  propagatedBuildInputs = [ time gawk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
