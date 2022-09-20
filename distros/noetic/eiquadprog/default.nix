
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-noetic-eiquadprog";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eiquadprog-ros-release/archive/release/noetic/eiquadprog/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "fc608b62a4c3e86830aa0861fd835a6ff5818f387b896d14664243dbea6c5d89";
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
