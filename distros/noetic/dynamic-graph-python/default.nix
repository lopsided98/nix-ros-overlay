
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, eigenpy, git }:
buildRosPackage {
  pname = "ros-noetic-dynamic-graph-python";
  version = "4.0.2-r3";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-python-ros-release/archive/release/noetic/dynamic-graph-python/4.0.2-3.tar.gz";
    name = "4.0.2-3.tar.gz";
    sha256 = "3c79a0eb15c9f4dd046a1c8e19d69aabe77d00dcc2e24fb1f0de7583a87c5fdc";
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
