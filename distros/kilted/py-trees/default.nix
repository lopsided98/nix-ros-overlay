
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-py-trees";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees-release/archive/release/kilted/py_trees/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "7fe5ee5610588281ec66b1c6759da0b544b93bdb5f4c10335e28feae340d0b2a";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];

  meta = {
    description = "Pythonic implementation of behaviour trees.";
    license = with lib.licenses; [ bsd3 ];
  };
}
