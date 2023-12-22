
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-rolling-py-trees-js";
  version = "0.6.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/rolling/py_trees_js/0.6.4-2.tar.gz";
    name = "0.6.4-2.tar.gz";
    sha256 = "38bfaefa608c8252fdff7fb64c37458904f0adc9f6f0ebbe52c7e77452a98f04";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.pyqtwebengine ];

  meta = {
    description = ''Javascript library for visualising behaviour trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
