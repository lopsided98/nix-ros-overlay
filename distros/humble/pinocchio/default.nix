
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, urdfdom }:
buildRosPackage {
  pname = "ros-humble-pinocchio";
  version = "2.6.21-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/humble/pinocchio/2.6.21-1.tar.gz";
    name = "2.6.21-1.tar.gz";
    sha256 = "7952e2dc2cae79dfead37665e2abb30245a6fc3c93769473a88d8c04b765b7a0";
  };

  buildType = "cmake";
  buildInputs = [ clang cmake doxygen git ];
  propagatedBuildInputs = [ boost eigen eigenpy hpp-fcl python3 python3Packages.numpy urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
