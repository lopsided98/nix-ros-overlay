
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, git, roscpp }:
buildRosPackage {
  pname = "ros-noetic-dynamic-graph-python";
  version = "3.5.3-r2";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-python-ros-release/archive/release/noetic/dynamic-graph-python/3.5.3-2.tar.gz";
    name = "3.5.3-2.tar.gz";
    sha256 = "8b6a74f4078a0314d0b2ecba099e6e078400eea037cc7cdc4ba9d5704ae205d4";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin dynamic-graph roscpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph library Python bindings'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
