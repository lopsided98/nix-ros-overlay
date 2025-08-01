
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-py-trees";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees-release/archive/release/kilted/py_trees/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "1123ea1677ae177a5edff3251006736e5af30f9a428b17deb43f59a07805f525";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];

  meta = {
    description = "Pythonic implementation of behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
