
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigenpy, eiquadprog, git, graphviz, pinocchio }:
buildRosPackage {
  pname = "ros-melodic-tsid";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/tsid-ros-release/archive/release/melodic/tsid/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "d017f96c11562f550cfcafb5314598e1b302bdfa4ee3605d1f3bec01fb1e95e5";
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
