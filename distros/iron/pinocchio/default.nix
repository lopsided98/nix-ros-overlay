
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, urdfdom }:
buildRosPackage {
  pname = "ros-iron-pinocchio";
  version = "2.6.17-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pinocchio-release/archive/release/iron/pinocchio/2.6.17-5.tar.gz";
    name = "2.6.17-5.tar.gz";
    sha256 = "e465b86204b3ad62ccb95bc4e019a15ec633a5e6ab2c492d783713ffe71947ad";
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
