
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, doxygen, dynamic-graph-python, git, sot-core }:
buildRosPackage {
  pname = "ros-noetic-sot-tools";
  version = "2.3.5-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-tools-ros-release/archive/release/noetic/sot-tools/2.3.5-1.tar.gz";
    name = "2.3.5-1.tar.gz";
    sha256 = "8a0424691bdf6c5700eb43384c78e2bc869d888a0a0bc525c8ec88c8829a710c";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ catkin dynamic-graph-python sot-core ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Miscellanous entities for the stack of tasks'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
