
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigenpy, eiquadprog, git, graphviz, pinocchio }:
buildRosPackage {
  pname = "ros-melodic-tsid";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/tsid-ros-release/archive/release/melodic/tsid/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "8f8b3c24e70436228693c32976bab700a2876676c12c3b661237f379d723b138";
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
