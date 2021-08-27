
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, eigenpy, git }:
buildRosPackage {
  pname = "ros-noetic-dynamic-graph-python";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-python-ros-release/archive/release/noetic/dynamic-graph-python/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "3847b2fff930a9a3779617b11002f9793445d40d2b0f540a781bbfda0dddab9a";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin dynamic-graph eigenpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph library Python bindings'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
