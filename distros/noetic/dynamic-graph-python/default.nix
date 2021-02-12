
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, eigenpy, git }:
buildRosPackage {
  pname = "ros-noetic-dynamic-graph-python";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-python-ros-release/archive/release/noetic/dynamic-graph-python/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "160c506d8d1479424985e185a8fd6968efb551ff2cc7dd93f8515bf5e1de3fb7";
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
