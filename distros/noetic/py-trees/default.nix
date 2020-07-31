
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-py-trees";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees-release/archive/release/noetic/py_trees/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "38bb008c75532924f7fad5a2f6662b413727dcca8a1ea9087baee4746fcf46ad";
  };

  buildType = "catkin";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Pythonic implementation of behaviour trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
