
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-jazzy-py-trees-js";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/jazzy/py_trees_js/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "c0558b493a09287eee0d95d45e37cf94317979604ae81342719a196a8279cb2a";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.pyqtwebengine ];

  meta = {
    description = "Javascript library for visualising behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
