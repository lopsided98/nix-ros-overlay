
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-lyrical-py-trees-js";
  version = "0.6.6-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/lyrical/py_trees_js/0.6.6-4.tar.gz";
    name = "0.6.6-4.tar.gz";
    sha256 = "0e05a0b9d67cf1110ef866c3b320f97be50f84229e5c7ac90db299c4f0404d7f";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.pyqtwebengine ];

  meta = {
    description = "Javascript library for visualising behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
