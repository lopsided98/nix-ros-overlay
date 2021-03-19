
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, doxygen, dynamic-graph-python, git, gtest, liblapack, openblas, pinocchio, sot-core, sot-tools }:
buildRosPackage {
  pname = "ros-noetic-sot-dynamic-pinocchio";
  version = "3.6.3-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-dynamic-pinocchio-ros-release/archive/release/noetic/sot-dynamic-pinocchio/3.6.3-1.tar.gz";
    name = "3.6.3-1.tar.gz";
    sha256 = "50447cd2030f4dda6a737ffb9ecc4ab297b2803ff311c81718fac790a957679f";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ catkin dynamic-graph-python liblapack openblas pinocchio sot-core sot-tools ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Pinocchio bindings for dynamic-graph'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
