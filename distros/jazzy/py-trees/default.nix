
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-py-trees";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees-release/archive/release/jazzy/py_trees/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "c0247d49e41044d45b9ebe0c80ceb0bdd323e665c190b6e19f69ea512d40b490";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];

  meta = {
    description = "Pythonic implementation of behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
