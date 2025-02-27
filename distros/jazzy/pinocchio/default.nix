
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, ros-environment, urdfdom }:
buildRosPackage {
  pname = "ros-jazzy-pinocchio";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/jazzy/pinocchio/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "b42d5af862d14529c551039662edbce32d9a29567106294b3a667acdf83ac1af";
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
