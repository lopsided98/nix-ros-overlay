
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, rostest, flex, cacert, bison, time, gawk }:
buildRosPackage {
  pname = "ros-melodic-downward";
  version = "2.1.12-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/downward/2.1.12-2.tar.gz;
    sha256 = "5faae81fd92c0ac0e3570bd3e5174998ee8fb77cc3dc183f59e1d814933e0d79";
  };

  buildInputs = [ python gawk rostest flex cacert time bison ];
  propagatedBuildInputs = [ time gawk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
