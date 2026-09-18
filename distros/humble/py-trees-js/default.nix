
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-humble-py-trees-js";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/humble/py_trees_js/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "1825f0b72ff0c95e80f7e70cf99c0377e6884f3e99dac92105921f6e59a2c999";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.pyqtwebengine ];

  meta = {
    description = "Javascript library for visualising behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
