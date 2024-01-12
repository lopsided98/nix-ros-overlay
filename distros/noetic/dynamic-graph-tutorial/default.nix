
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, dynamic-graph-python, git }:
buildRosPackage {
  pname = "ros-noetic-dynamic-graph-tutorial";
  version = "1.3.5-r3";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-tutorial-ros-release/archive/release/noetic/dynamic-graph-tutorial/1.3.5-3.tar.gz";
    name = "1.3.5-3.tar.gz";
    sha256 = "25942f33ca8c7445def9b45a0dad355955669dc9d7fcf985d3e6737a0414e3d9";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen dynamic-graph dynamic-graph-python git ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph tutorial'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
