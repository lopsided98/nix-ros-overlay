
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, gawk, python, rostest, time }:
buildRosPackage {
  pname = "ros-melodic-downward";
  version = "2.1.22-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/downward/2.1.22-1.tar.gz";
    name = "2.1.22-1.tar.gz";
    sha256 = "a961d1f9b2b9f6af11ea5272feb72e89c58b76f6f73fb1847d13814f07b1661c";
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
