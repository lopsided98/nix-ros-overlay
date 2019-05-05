
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, rostest, flex, cacert, bison, time, gawk }:
buildRosPackage {
  pname = "ros-melodic-downward";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/downward/2.1.11-0.tar.gz;
    sha256 = "b06efbb17bc894b2ef72322de07a90355e9ac920005108b5a7db654b0cfdf043";
  };

  buildInputs = [ python gawk rostest flex cacert time bison ];
  propagatedBuildInputs = [ time gawk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
