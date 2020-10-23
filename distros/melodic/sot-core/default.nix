
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, dynamic-graph-python, pinocchio }:
buildRosPackage {
  pname = "ros-melodic-sot-core";
  version = "4.10.1-r5";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-core-ros-release/archive/release/melodic/sot-core/4.10.1-5.tar.gz";
    name = "4.10.1-5.tar.gz";
    sha256 = "553433f035c8c7ed9f763bff2e15eec2f1618c4bda1f92725adbc09bf55ccb94";
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
