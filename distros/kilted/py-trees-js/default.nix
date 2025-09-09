
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-kilted-py-trees-js";
  version = "0.6.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/kilted/py_trees_js/0.6.6-2.tar.gz";
    name = "0.6.6-2.tar.gz";
    sha256 = "a45ba5db2afabf7dab448e47c8ecf43a6a1d7c93ec1002174602f714fe79b075";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.pyqtwebengine ];

  meta = {
    description = "Javascript library for visualising behaviour trees.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
