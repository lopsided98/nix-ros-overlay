
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-rolling-py-trees-js";
  version = "0.6.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/rolling/py_trees_js/0.6.4-3.tar.gz";
    name = "0.6.4-3.tar.gz";
    sha256 = "7e341e7e703d352aca8ee6f4dd470001970bf9b63bb9f57e1f714108d18ea969";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.pyqtwebengine ];

  meta = {
    description = ''Javascript library for visualising behaviour trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
