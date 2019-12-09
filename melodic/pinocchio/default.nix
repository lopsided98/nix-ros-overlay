
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, boost, urdfdom, pythonPackages, cmake, eigenpy, python, eigen, doxygen }:
buildRosPackage {
  pname = "ros-melodic-pinocchio";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/pinocchio_catkin-release/archive/release/melodic/pinocchio/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "f12b7e165d1ff99706aaa1d75d329c58227b06c85c5d806d2d1ad9e70c32e7b3";
  };

  buildType = "cmake";
  buildInputs = [ git boost pythonPackages.numpy urdfdom eigenpy python eigen doxygen ];
  propagatedBuildInputs = [ pythonPackages.numpy boost urdfdom eigenpy python eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
