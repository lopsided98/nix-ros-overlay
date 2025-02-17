
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-humble-py-trees";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees-release/archive/release/humble/py_trees/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "3049da1100f35a2ba411386964405280659dc277d45f9a79da6827f7387f4832";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];

  meta = {
    description = "Pythonic implementation of behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
