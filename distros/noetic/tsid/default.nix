
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigenpy, eiquadprog, git, graphviz, pinocchio }:
buildRosPackage {
  pname = "ros-noetic-tsid";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/tsid-ros-release/archive/release/noetic/tsid/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "5bb2ab81b9a5b12ce4bb9af81d82fe543386e123d522b950f80826fa76aec9ec";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin eigenpy eiquadprog graphviz pinocchio ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Efficient Task Space Inverse Dynamics (TSID) based on Pinocchio'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
