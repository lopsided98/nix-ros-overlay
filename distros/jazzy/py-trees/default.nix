
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-py-trees";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees-release/archive/release/jazzy/py_trees/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "2efcef183b2513803574c528517ac0f6e40be5acfa4ecff1c7f3ecc2dfeb936c";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];

  meta = {
    description = "Pythonic implementation of behaviour trees.";
    license = with lib.licenses; [ bsd3 ];
  };
}
