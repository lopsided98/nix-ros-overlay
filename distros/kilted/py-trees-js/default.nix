
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-kilted-py-trees-js";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/kilted/py_trees_js/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "59769450bbb74637f680ee8f3496e1f78bbdf4536f7afcaecc24f1fa499d668c";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.pyqtwebengine ];

  meta = {
    description = "Javascript library for visualising behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
