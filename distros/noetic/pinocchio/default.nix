
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, urdfdom }:
buildRosPackage {
  pname = "ros-noetic-pinocchio";
  version = "2.6.21-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/pinocchio-ros-release/archive/release/noetic/pinocchio/2.6.21-1.tar.gz";
    name = "2.6.21-1.tar.gz";
    sha256 = "e80ecb8675edae2f5651c4b722fc9807096042c51b463b1e0381f47261ed6afb";
  };

  buildType = "cmake";
  buildInputs = [ clang cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen eigenpy hpp-fcl python3 python3Packages.numpy urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
