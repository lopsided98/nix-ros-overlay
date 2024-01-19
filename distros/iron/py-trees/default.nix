
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-iron-py-trees";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees-release/archive/release/iron/py_trees/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "82fc148235dfe66459259600d16229674bd69c58892c41ed664fa12f8ef46dab";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];

  meta = {
    description = ''Pythonic implementation of behaviour trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
