
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, ros-environment, urdfdom }:
buildRosPackage {
  pname = "ros-noetic-pinocchio";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/pinocchio-ros-release/archive/release/noetic/pinocchio/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "b702a6a2dcba7c70b2e95d49b9e65ea670b5d091aa2cac969b1390b6ca10beb9";
  };

  buildType = "cmake";
  buildInputs = [ clang cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen eigenpy hpp-fcl python3 python3Packages.numpy ros-environment urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = "A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.";
    license = with lib.licenses; [ bsd2 ];
  };
}
