
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-melodic-eiquadprog";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eiquadprog-ros-release/archive/release/melodic/eiquadprog/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "7e0ba9f0b290dd7934fe2e4e66330edcc3434b4fb070f9636bd19b39c202310d";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen graphviz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eiquadprog a QP solver using active sets'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
