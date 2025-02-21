
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, ros-environment, urdfdom }:
buildRosPackage {
  pname = "ros-rolling-pinocchio";
  version = "3.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/rolling/pinocchio/3.4.0-2.tar.gz";
    name = "3.4.0-2.tar.gz";
    sha256 = "9b02078ce110d04b6ce0a3a263e99b8b7dcd94c25392fb135ee34d8f776a236d";
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
