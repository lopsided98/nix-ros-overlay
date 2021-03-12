
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, dynamic-graph-python, pinocchio }:
buildRosPackage {
  pname = "ros-melodic-sot-core";
  version = "4.11.5-r2";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-core-ros-release/archive/release/melodic/sot-core/4.11.5-2.tar.gz";
    name = "4.11.5-2.tar.gz";
    sha256 = "cd97257236edad1d9299d1c9e26ac664760ecee65a28dcf4fc6af301ca5910d4";
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
