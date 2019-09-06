
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, boost, git, catkin, pythonPackages, urdfdom, eigen, eigenpy }:
buildRosPackage {
  pname = "ros-melodic-pinocchio";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/pinocchio_catkin-release/archive/release/melodic/pinocchio/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "55e2abcacc5f041bb5aac36853a0114852d76d03bdbe29c5a257f39429360fc6";
  };

  buildType = "catkin";
  buildInputs = [ python pythonPackages.numpy boost git urdfdom eigen eigenpy ];
  propagatedBuildInputs = [ python pythonPackages.numpy boost urdfdom eigenpy eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives - wrapped for catkin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
