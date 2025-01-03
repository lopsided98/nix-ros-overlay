
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-noetic-eiquadprog";
  version = "1.2.9-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eiquadprog-ros-release/archive/release/noetic/eiquadprog/1.2.9-1.tar.gz";
    name = "1.2.9-1.tar.gz";
    sha256 = "5c72517300a4b18d1163003cd7b8cc90197e5fe77f3472ff2160993c45e999e7";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen graphviz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Eiquadprog a QP solver using active sets";
    license = with lib.licenses; [ lgpl3Only ];
  };
}
