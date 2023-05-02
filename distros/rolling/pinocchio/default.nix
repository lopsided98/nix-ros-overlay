
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, urdfdom }:
buildRosPackage {
  pname = "ros-rolling-pinocchio";
  version = "2.6.17-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/rolling/pinocchio/2.6.17-4.tar.gz";
    name = "2.6.17-4.tar.gz";
    sha256 = "cbb9d6eefc674eb4bbe25632037c4feb407f30e25cdb88623b016a15e5c281f8";
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
