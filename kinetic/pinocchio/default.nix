
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, boost, git, catkin, pythonPackages, urdfdom, eigen, eigenpy }:
buildRosPackage {
  pname = "ros-kinetic-pinocchio";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/pinocchio_catkin-release/archive/release/kinetic/pinocchio/2.0.0-0.tar.gz;
    sha256 = "833a3a116c6690d4d3f3481530ee22f16907b3dcc5728c246e99f053e6638c13";
  };

  propagatedBuildInputs = [ python pythonPackages.numpy boost eigen eigenpy urdfdom ];
  nativeBuildInputs = [ python pythonPackages.numpy boost eigen eigenpy git catkin urdfdom ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives - wrapped for catkin.'';
    #license = lib.licenses.BSD;
  };
}
