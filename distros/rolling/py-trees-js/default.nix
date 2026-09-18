
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-rolling-py-trees-js";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/rolling/py_trees_js/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "6d4167011016cf25747eef0bf04faa19c89c4ebee98ec79ac93c8a1666a24728";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.pyqt5 python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqtwebengine ];

  meta = {
    description = "Javascript library for visualising behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
