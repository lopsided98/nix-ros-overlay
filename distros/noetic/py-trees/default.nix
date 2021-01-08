
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-py-trees";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees-release/archive/release/noetic/py_trees/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "d87be5859962edd36fb396df2a71008893f72386ae16b902c64229115fd1b822";
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
