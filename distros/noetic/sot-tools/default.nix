
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, doxygen, dynamic-graph-python, git, sot-core }:
buildRosPackage {
  pname = "ros-noetic-sot-tools";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-tools-ros-release/archive/release/noetic/sot-tools/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "d54e689070390d5ffe5606f2131f31848e71c83e3d1100435ed7fdceae8ef117";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ catkin dynamic-graph-python sot-core ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Miscellanous entities for the stack of tasks'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
