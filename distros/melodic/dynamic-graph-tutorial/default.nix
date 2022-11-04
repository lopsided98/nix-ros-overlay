
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, dynamic-graph-python, git }:
buildRosPackage {
  pname = "ros-melodic-dynamic-graph-tutorial";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-tutorial-ros-release/archive/release/melodic/dynamic-graph-tutorial/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "d85ac43d800e7d74f365de3cf8d176bba7fbb47390ee7cffa0f540ccd2a8e327";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen dynamic-graph dynamic-graph-python git ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph tutorial'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
