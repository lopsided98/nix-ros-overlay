
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-py-trees";
  version = "2.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees-release/archive/release/jazzy/py_trees/2.2.1-4.tar.gz";
    name = "2.2.1-4.tar.gz";
    sha256 = "e69d9b74b50d465fd589ff803c6bbe463bf9c45f014ec1847b41e5849044be88";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];

  meta = {
    description = "Pythonic implementation of behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
