
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, dynamic-graph-python, pinocchio }:
buildRosPackage {
  pname = "ros-noetic-sot-core";
  version = "4.11.8-r2";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-core-ros-release/archive/release/noetic/sot-core/4.11.8-2.tar.gz";
    name = "4.11.8-2.tar.gz";
    sha256 = "25755415739bccf0aef6a54f3d3debe086c678a3d0279d994410ba7c30941560";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen ];
  propagatedBuildInputs = [ boost catkin dynamic-graph dynamic-graph-python pinocchio ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Hierarchical task solver plug-in for dynamic-graph'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
