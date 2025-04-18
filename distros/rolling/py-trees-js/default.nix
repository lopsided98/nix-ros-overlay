
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-rolling-py-trees-js";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/rolling/py_trees_js/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "19d5603480063c6f5ed764ce849e870069985284df69a53891ac20b084ccd369";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.pyqtwebengine ];

  meta = {
    description = "Javascript library for visualising behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
