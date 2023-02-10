
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, urdfdom }:
buildRosPackage {
  pname = "ros-foxy-pinocchio";
  version = "2.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/foxy/pinocchio/2.6.16-1.tar.gz";
    name = "2.6.16-1.tar.gz";
    sha256 = "a5547d5ca86f81dcf8a567e63d61aeddfce42afba23b881e352cab061a498001";
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
