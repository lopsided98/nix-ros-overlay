
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-py-trees";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees-release/archive/release/rolling/py_trees/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "47fc57ab7d491d6cfccb9f7823fd5af8cb566c0f67f6e818fb1cea2e04c07ea0";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];

  meta = {
    description = "Pythonic implementation of behaviour trees.";
    license = with lib.licenses; [ bsd3 ];
  };
}
