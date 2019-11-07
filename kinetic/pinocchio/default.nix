
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, boost, git, pythonPackages, doxygen, urdfdom, eigen, eigenpy, cmake }:
buildRosPackage {
  pname = "ros-kinetic-pinocchio";
  version = "2.1.11-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/pinocchio_catkin-release/archive/release/kinetic/pinocchio/2.1.11-1.tar.gz";
    name = "2.1.11-1.tar.gz";
    sha256 = "6d97900a4557556662d2986cb44df838045f03796821a9a14e4a01aac35d8740";
  };

  buildType = "cmake";
  buildInputs = [ python pythonPackages.numpy boost git doxygen urdfdom eigen eigenpy ];
  propagatedBuildInputs = [ python pythonPackages.numpy boost urdfdom eigenpy eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
