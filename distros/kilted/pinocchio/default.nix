
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, ros-environment, urdfdom }:
buildRosPackage {
  pname = "ros-kilted-pinocchio";
  version = "3.4.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/kilted/pinocchio/3.4.0-4.tar.gz";
    name = "3.4.0-4.tar.gz";
    sha256 = "9d41c8b17478cbbf1af48a36a562128f6ee8013ab3225b25b6a7714aac5957a3";
  };

  buildType = "cmake";
  buildInputs = [ clang cmake doxygen git ];
  propagatedBuildInputs = [ boost eigen eigenpy hpp-fcl python3 python3Packages.numpy ros-environment urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = "A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.";
    license = with lib.licenses; [ bsd2 ];
  };
}
