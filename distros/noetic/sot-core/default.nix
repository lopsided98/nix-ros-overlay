
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, dynamic-graph-python, pinocchio }:
buildRosPackage {
  pname = "ros-noetic-sot-core";
  version = "4.11.2-r3";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-core-ros-release/archive/release/noetic/sot-core/4.11.2-3.tar.gz";
    name = "4.11.2-3.tar.gz";
    sha256 = "cb2310a9d43db5e37d06970002df60fcf0096457b9c0b1c4d2c2281bff9ac32c";
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
