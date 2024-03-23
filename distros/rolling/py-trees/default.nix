
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-py-trees";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees-release/archive/release/rolling/py_trees/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "affde676de0d48ba2297ee848e1da7fe5e1d2ebc035a65090520ce0623ceebcc";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];

  meta = {
    description = "Pythonic implementation of behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
