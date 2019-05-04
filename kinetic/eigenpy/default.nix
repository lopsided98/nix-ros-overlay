
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, boost, git, catkin, pythonPackages, eigen }:
buildRosPackage {
  pname = "ros-kinetic-eigenpy";
  version = "1.5.1-r1";

  src = fetchurl {
    url = https://github.com/ipab-slmc/eigenpy_catkin-release/archive/release/kinetic/eigenpy/1.5.1-1.tar.gz;
    sha256 = "1c469a9fcd39bc28cfea46fc9370d2ded8697748208c0c8609b5d03c2271a4c1";
  };

  buildInputs = [ python pythonPackages.numpy boost git eigen ];
  propagatedBuildInputs = [ python pythonPackages.numpy boost eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python - wrapped for catkin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
