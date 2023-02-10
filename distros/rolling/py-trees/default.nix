
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-py-trees";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees-release/archive/release/rolling/py_trees/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "0579dbccace6dd5ff26ef699dfcde7f6f31a3ebff517da1abc25cfcc544159ba";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];

  meta = {
    description = ''Pythonic implementation of behaviour trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
