
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, gawk, python, rostest, time }:
buildRosPackage {
  pname = "ros-melodic-downward";
  version = "2.1.23-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/downward/2.1.23-1.tar.gz";
    name = "2.1.23-1.tar.gz";
    sha256 = "f46fd8cba49ba79dbec02b9ab7cf087970723798d5d906f1bcd7fbfbfdb74d67";
  };

  buildType = "catkin";
  buildInputs = [ bison cacert flex python rostest ];
  propagatedBuildInputs = [ gawk time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
