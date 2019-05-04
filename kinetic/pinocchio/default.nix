
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, boost, git, catkin, pythonPackages, urdfdom, eigen, eigenpy }:
buildRosPackage {
  pname = "ros-kinetic-pinocchio";
  version = "2.1.3-r1";

  src = fetchurl {
    url = https://github.com/ipab-slmc/pinocchio_catkin-release/archive/release/kinetic/pinocchio/2.1.3-1.tar.gz;
    sha256 = "e4eaf90a73bc3f4efedb4be508fdfb753b2947e3fdbeed2a3b11da55804a8761";
  };

  buildInputs = [ python pythonPackages.numpy boost git urdfdom eigen eigenpy ];
  propagatedBuildInputs = [ python pythonPackages.numpy boost urdfdom eigenpy eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives - wrapped for catkin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
