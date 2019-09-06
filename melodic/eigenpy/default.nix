
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, boost, git, catkin, pythonPackages, eigen }:
buildRosPackage {
  pname = "ros-melodic-eigenpy";
  version = "1.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/eigenpy_catkin-release/archive/release/melodic/eigenpy/1.5.1-2.tar.gz";
    name = "1.5.1-2.tar.gz";
    sha256 = "c8cf3b85343d3d89898496db8b1f5fcdfc1d3c5c43611cafb1871d7594c21a68";
  };

  buildType = "catkin";
  buildInputs = [ python pythonPackages.numpy boost git eigen ];
  propagatedBuildInputs = [ python pythonPackages.numpy boost eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python - wrapped for catkin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
