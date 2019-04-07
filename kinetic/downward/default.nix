
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, gawk, rostest, flex, cacert, time, bison }:
buildRosPackage {
  pname = "ros-kinetic-downward";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/downward/2.1.11-0.tar.gz;
    sha256 = "e770e89d1261ef1253095e31b423bcc32892ffe3a60467282f6636f3eb9a894b";
  };

  buildInputs = [ python rostest flex gawk cacert time bison ];
  propagatedBuildInputs = [ time gawk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    #license = lib.licenses.GPL;
  };
}
