
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-rolling-py-trees-js";
  version = "0.6.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/rolling/py_trees_js/0.6.6-3.tar.gz";
    name = "0.6.6-3.tar.gz";
    sha256 = "579aa7d7b555105297ef539c86e28de5e104552b4b94250397a7ff799cd669f0";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.pyqtwebengine ];

  meta = {
    description = "Javascript library for visualising behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
