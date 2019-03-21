
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, boost, git, catkin, pythonPackages, eigen }:
buildRosPackage {
  pname = "ros-kinetic-eigenpy";
  version = "1.5.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/eigenpy_catkin-release/archive/release/kinetic/eigenpy/1.5.0-0.tar.gz;
    sha256 = "714b2464ca1fb8d903f7dc9c343c1b1fc2a765e00df7ac873c0bbdcd47631ab1";
  };

  propagatedBuildInputs = [ python pythonPackages.numpy boost eigen ];
  nativeBuildInputs = [ python pythonPackages.numpy boost eigen git catkin ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python - wrapped for catkin.'';
    #license = lib.licenses.LGPLv3;
  };
}
