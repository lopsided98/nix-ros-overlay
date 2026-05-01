
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-py-trees";
  version = "2.4.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees-release/archive/release/lyrical/py_trees/2.4.0-4.tar.gz";
    name = "2.4.0-4.tar.gz";
    sha256 = "75e0c320130c6deaec7d95da7bdef8c1b9671c60e82c943cb1df4de1e32e995c";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];

  meta = {
    description = "Pythonic implementation of behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
