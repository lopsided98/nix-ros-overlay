
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, gawk, rostest, flex, cacert, time, bison }:
buildRosPackage {
  pname = "ros-lunar-downward";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/downward/2.1.11-2.tar.gz;
    sha256 = "1daebc844dd2ff5d14db9f0291b3c0e369a0aeb6c64d757e90021ac9e576aea2";
  };

  buildInputs = [ python rostest flex gawk cacert time bison ];
  propagatedBuildInputs = [ time gawk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    #license = lib.licenses.GPL;
  };
}
