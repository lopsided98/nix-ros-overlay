
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, dynamic-graph-python, git }:
buildRosPackage {
  pname = "ros-noetic-dynamic-graph-tutorial";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-tutorial-ros-release/archive/release/noetic/dynamic-graph-tutorial/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "a5499ce3759b782a0ce47408c2dcc025ccef46c53dd64e3080968beee6a08a60";
  };

  buildType = "cmake";
  buildInputs = [ doxygen dynamic-graph dynamic-graph-python git ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph tutorial'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
