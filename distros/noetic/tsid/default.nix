
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigenpy, eiquadprog, git, graphviz, pinocchio }:
buildRosPackage {
  pname = "ros-noetic-tsid";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/tsid-ros-release/archive/release/noetic/tsid/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "99b43a697219f69d23fe2404449829b87b213aacd96efa9bd93e3718a1a9a2b3";
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
