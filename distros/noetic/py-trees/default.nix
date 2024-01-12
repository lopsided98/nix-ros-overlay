
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-py-trees";
  version = "0.7.6-r2";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees-release/archive/release/noetic/py_trees/0.7.6-2.tar.gz";
    name = "0.7.6-2.tar.gz";
    sha256 = "7d8e790d7269001586af8e85d78c8b8fb55dfdcee470d82ee22c53b720134e63";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Pythonic implementation of behaviour trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
