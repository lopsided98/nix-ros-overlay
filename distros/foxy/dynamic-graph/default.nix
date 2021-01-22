
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-foxy-dynamic-graph";
  version = "4.2.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-ros-release/archive/release/noetic/dynamic-graph/4.2.2-1.tar.gz";
    name = "4.2.2-1.tar.gz";
    sha256 = "9044a56f1b493709619b6ce9bf8db8156fa5687d681dfa08b847c271ee8d0559";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ ament-cmake boost eigen graphviz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
