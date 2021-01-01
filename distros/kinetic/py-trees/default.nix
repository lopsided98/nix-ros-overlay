
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-py-trees";
  version = "0.5.12";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees-release/archive/release/kinetic/py_trees/0.5.12-0.tar.gz";
    name = "0.5.12-0.tar.gz";
    sha256 = "d6a11eaf83c6cb706584db56c1d28109f5898a974b1bb429eb87d4e3b197cb4e";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.setuptools ];
  propagatedBuildInputs = [ pythonPackages.enum34 pythonPackages.pydot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Pythonic implementation of behaviour trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
