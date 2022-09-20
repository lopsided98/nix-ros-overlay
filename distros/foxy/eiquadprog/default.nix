
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-foxy-eiquadprog";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eiquadprog-ros-release/archive/release/foxy/eiquadprog/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "883d7e58c56768f94a4951d2a18641a99ddabbc33d55f558ee3ab7a16beef1d6";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ ament-cmake boost eigen graphviz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eiquadprog a QP solver using active sets'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
