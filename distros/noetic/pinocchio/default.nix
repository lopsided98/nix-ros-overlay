
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, eigenpy, git, python, pythonPackages, urdfdom }:
buildRosPackage {
  pname = "ros-noetic-pinocchio";
  version = "2.4.5-r5";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/pinocchio_catkin-release/archive/release/noetic/pinocchio/2.4.5-5.tar.gz";
    name = "2.4.5-5.tar.gz";
    sha256 = "9c5ddbf173290c34c4c9fdbee34428648200f7658ebb893c00eb91d7aaddbab8";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost eigen eigenpy python pythonPackages.numpy urdfdom ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
