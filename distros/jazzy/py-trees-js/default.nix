
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-jazzy-py-trees-js";
  version = "0.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/jazzy/py_trees_js/0.6.4-1.tar.gz";
    name = "0.6.4-1.tar.gz";
    sha256 = "900b749558a777ecabb533e83b65257dd1cecae4f6d26aa9996e46951e76f0e3";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.pyqtwebengine ];

  meta = {
    description = "Javascript library for visualising behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
