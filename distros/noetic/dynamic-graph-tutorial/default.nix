
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, dynamic-graph-python, git }:
buildRosPackage {
  pname = "ros-noetic-dynamic-graph-tutorial";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-tutorial-ros-release/archive/release/noetic/dynamic-graph-tutorial/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "33213cea4468eb12ca6710d99006ed1b4ef7fb9586b2771d014830182bf1ba21";
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
