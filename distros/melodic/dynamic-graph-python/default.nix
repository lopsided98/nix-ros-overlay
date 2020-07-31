
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, git, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dynamic-graph-python";
  version = "3.5.3-r2";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-python-ros-release/archive/release/melodic/dynamic-graph-python/3.5.3-2.tar.gz";
    name = "3.5.3-2.tar.gz";
    sha256 = "13545602485a4127a069c383f39e937df533f9253c408465fde9cfc3ed89f73f";
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
