
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-py-trees";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees-release/archive/release/rolling/py_trees/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "41bac46372f5f124d56fe7d8f4c4c98e36697adc46090c0790b7a7bdeaec302a";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];

  meta = {
    description = "Pythonic implementation of behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
