
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, dynamic-graph-python, pinocchio }:
buildRosPackage {
  pname = "ros-noetic-sot-core";
  version = "4.10.1-r5";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-core-ros-release/archive/release/noetic/sot-core/4.10.1-5.tar.gz";
    name = "4.10.1-5.tar.gz";
    sha256 = "7df2ec65a3746fcb3ffdaa60a650c14d67215e4c1f78d8884fa2592990a9e3fa";
  };

  buildType = "cmake";
  buildInputs = [ doxygen ];
  propagatedBuildInputs = [ boost catkin dynamic-graph dynamic-graph-python pinocchio ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Hierarchical task solver plug-in for dynamic-graph'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
