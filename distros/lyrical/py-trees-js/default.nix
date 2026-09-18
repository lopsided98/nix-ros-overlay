
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-lyrical-py-trees-js";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/lyrical/py_trees_js/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "ff47537d01e6eb6ba41c9317500cebec5709be34bbe8f388e949da329313b7d5";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.pyqt5 python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqtwebengine ];

  meta = {
    description = "Javascript library for visualising behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
