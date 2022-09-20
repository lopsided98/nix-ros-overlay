
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, doxygen, dynamic-graph-python, git, gtest, liblapack, openblas, pinocchio, sot-core, sot-tools }:
buildRosPackage {
  pname = "ros-noetic-sot-dynamic-pinocchio";
  version = "3.6.5-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-dynamic-pinocchio-ros-release/archive/release/noetic/sot-dynamic-pinocchio/3.6.5-1.tar.gz";
    name = "3.6.5-1.tar.gz";
    sha256 = "05a4c7c1768fbb3674a8eed9f75c2770ef2e65cc68a065835d79f2a2826b1581";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ catkin dynamic-graph-python liblapack openblas pinocchio sot-core sot-tools ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Pinocchio bindings for dynamic-graph'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
