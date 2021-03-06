
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, doxygen, dynamic-graph-python, git, sot-core }:
buildRosPackage {
  pname = "ros-noetic-sot-tools";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-tools-ros-release/archive/release/noetic/sot-tools/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "5cd8cbd6e819505af7dc8b6e5eb2d08d79927bbe1791fb52d76ddce29b9eac7e";
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
