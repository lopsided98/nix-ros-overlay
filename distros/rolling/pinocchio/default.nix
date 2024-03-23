
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, urdfdom }:
buildRosPackage {
  pname = "ros-rolling-pinocchio";
  version = "2.6.21-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/rolling/pinocchio/2.6.21-2.tar.gz";
    name = "2.6.21-2.tar.gz";
    sha256 = "c5e50effc5ac6505c0b86c863028de5e12dd46876378e621a3e9c68ef67b959e";
  };

  buildType = "cmake";
  buildInputs = [ clang cmake doxygen git ];
  propagatedBuildInputs = [ boost eigen eigenpy hpp-fcl python3 python3Packages.numpy urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = "A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.";
    license = with lib.licenses; [ bsd2 ];
  };
}
