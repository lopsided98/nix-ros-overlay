
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-eloquent-eiquadprog";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eiquadprog-ros-release/archive/release/eloquent/eiquadprog/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "29ff59ff0e5e702376443848e41054197939b2acb7654234494f480edb119734";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ ament-cmake boost eigen graphviz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eiquadprog a QP solver using active sets'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
