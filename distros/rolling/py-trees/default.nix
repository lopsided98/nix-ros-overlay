
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-py-trees";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees-release/archive/release/rolling/py_trees/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "13d6aa6919f43d34804b655aaf949ac9c3d8e73f1822f939c0ea78b740fa3d8d";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pydot ];

  meta = {
    description = ''Pythonic implementation of behaviour trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
