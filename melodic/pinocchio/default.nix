
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, boost, git, catkin, pythonPackages, urdfdom, eigen, eigenpy }:
buildRosPackage {
  pname = "ros-melodic-pinocchio";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/pinocchio_catkin-release/archive/release/melodic/pinocchio/2.0.0-0.tar.gz;
    sha256 = "8f84f420cbee52acb26755fd7bdba3f06013bccc0f1134d080f1bca9a37fa7ff";
  };

  propagatedBuildInputs = [ python pythonPackages.numpy boost eigen eigenpy urdfdom ];
  nativeBuildInputs = [ python pythonPackages.numpy boost eigen eigenpy git catkin urdfdom ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives - wrapped for catkin.'';
    #license = lib.licenses.BSD;
  };
}
