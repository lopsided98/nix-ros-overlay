
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigenpy, eiquadprog, git, graphviz, pinocchio }:
buildRosPackage {
  pname = "ros-noetic-tsid";
  version = "1.6.2-r2";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/tsid-ros-release/archive/release/noetic/tsid/1.6.2-2.tar.gz";
    name = "1.6.2-2.tar.gz";
    sha256 = "a3f670afcb35a69415fe784584e853e309771c4954bbf36b90019f900bfa2409";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin eigenpy eiquadprog graphviz pinocchio ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Efficient Task Space Inverse Dynamics (TSID) based on Pinocchio'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
