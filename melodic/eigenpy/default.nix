
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, boost, git, catkin, pythonPackages, eigen }:
buildRosPackage {
  pname = "ros-melodic-eigenpy";
  version = "1.5.0-r1";

  src = fetchurl {
    url = https://github.com/ipab-slmc/eigenpy_catkin-release/archive/release/melodic/eigenpy/1.5.0-1.tar.gz;
    sha256 = "407300df55fa840ad29485ae7f9506e49482bad4b9783aef2bf6d90afe163f4b";
  };

  propagatedBuildInputs = [ python pythonPackages.numpy boost eigen ];
  nativeBuildInputs = [ python pythonPackages.numpy boost eigen git catkin ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python - wrapped for catkin.'';
    #license = lib.licenses.LGPLv3;
  };
}
