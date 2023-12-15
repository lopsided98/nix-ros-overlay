
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-iron-py-trees-js";
  version = "0.6.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/iron/py_trees_js/0.6.4-3.tar.gz";
    name = "0.6.4-3.tar.gz";
    sha256 = "6bdb4ab4a1f7f0b084bdd04516e76179a473c3fc59815b3acf5164fcec74381a";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.pyqtwebengine ];

  meta = {
    description = ''Javascript library for visualising behaviour trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
