
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-noetic-eiquadprog";
  version = "1.2.8-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eiquadprog-ros-release/archive/release/noetic/eiquadprog/1.2.8-1.tar.gz";
    name = "1.2.8-1.tar.gz";
    sha256 = "7f12972f351a6125c79d8b930091b8c0e3da411ee0e4104352e0210954a5a6ad";
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
