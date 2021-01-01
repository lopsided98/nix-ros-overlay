
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, gawk, python3, rostest, time }:
buildRosPackage {
  pname = "ros-noetic-downward";
  version = "2.1.21-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/downward/2.1.21-2.tar.gz";
    name = "2.1.21-2.tar.gz";
    sha256 = "af167e3a93447efd3db9731aacadf13d6b554cb202743c05630892360766f16b";
  };

  buildType = "catkin";
  buildInputs = [ bison cacert flex python3 rostest ];
  propagatedBuildInputs = [ gawk time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
