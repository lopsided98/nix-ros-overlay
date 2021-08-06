
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, eigenpy, git, python3, python3Packages, urdfdom }:
buildRosPackage {
  pname = "ros-noetic-pinocchio";
  version = "2.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/pinocchio_catkin-release/archive/release/noetic/pinocchio/2.6.3-1.tar.gz";
    name = "2.6.3-1.tar.gz";
    sha256 = "6af15f1ded6714909c0a7999b73016b1646f32dfa7ff93ab11e98384d0147121";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen eigenpy python3 python3Packages.numpy urdfdom ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
