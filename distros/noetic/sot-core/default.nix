
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, dynamic-graph-python, pinocchio }:
buildRosPackage {
  pname = "ros-noetic-sot-core";
  version = "4.11.5-r2";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-core-ros-release/archive/release/noetic/sot-core/4.11.5-2.tar.gz";
    name = "4.11.5-2.tar.gz";
    sha256 = "cbf16687c4ebb2226500c8fba4ffe6ffbea2bf15c5d09cf3fba151ba57d8327f";
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
