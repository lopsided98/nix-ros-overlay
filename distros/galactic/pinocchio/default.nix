
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, urdfdom }:
buildRosPackage {
  pname = "ros-galactic-pinocchio";
  version = "2.6.9-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/galactic/pinocchio/2.6.9-2.tar.gz";
    name = "2.6.9-2.tar.gz";
    sha256 = "236757c2d8bea58db73c137067b35c86bac2cf4ca83b0681f32364b0e499095b";
  };

  buildType = "cmake";
  buildInputs = [ clang cmake doxygen git ];
  propagatedBuildInputs = [ boost eigen eigenpy hpp-fcl python3 python3Packages.numpy urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
