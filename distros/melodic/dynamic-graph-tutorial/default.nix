
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, dynamic-graph-python, git }:
buildRosPackage {
  pname = "ros-melodic-dynamic-graph-tutorial";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-tutorial-ros-release/archive/release/melodic/dynamic-graph-tutorial/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "8295134fa254829a0fa3a9aa2280cb7c330ee30adf6990f4fd842ea57ae5949d";
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
