
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, doxygen, dynamic-graph-python, git, gtest, liblapack, openblas, pinocchio, sot-core, sot-tools }:
buildRosPackage {
  pname = "ros-noetic-sot-dynamic-pinocchio";
  version = "3.6.5-r2";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-dynamic-pinocchio-ros-release/archive/release/noetic/sot-dynamic-pinocchio/3.6.5-2.tar.gz";
    name = "3.6.5-2.tar.gz";
    sha256 = "63cd61e5a2137b3106754d21e12aedbe8e58a7d5f2e3df83a3a363e9b263f923";
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
