
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, urdfdom }:
buildRosPackage {
  pname = "ros-humble-pinocchio";
  version = "2.6.10-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/humble/pinocchio/2.6.10-2.tar.gz";
    name = "2.6.10-2.tar.gz";
    sha256 = "784d6c5e67caefebe57bd7fb769cb662a0d97747aefacb7c9e657a8df48412d4";
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
