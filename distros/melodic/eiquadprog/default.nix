
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-melodic-eiquadprog";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eiquadprog-ros-release/archive/release/melodic/eiquadprog/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "794c00af2e41e4656ce5bc539672653bf30515a12c514a510dcc7e9ef92c8b38";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen graphviz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eiquadprog a QP solver using active sets'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
