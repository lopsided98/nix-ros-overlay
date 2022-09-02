
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, urdfdom }:
buildRosPackage {
  pname = "ros-humble-pinocchio";
  version = "2.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/humble/pinocchio/2.6.9-1.tar.gz";
    name = "2.6.9-1.tar.gz";
    sha256 = "b087b892f8fffdad7ad51031962ad2f2ba506275a6e20e07d8c0b40bcd5f1830";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost eigen eigenpy hpp-fcl python3 python3Packages.numpy urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
