
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, qt5 }:
buildRosPackage {
  pname = "ros-humble-py-trees-js";
  version = "0.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_js-release/archive/release/humble/py_trees_js/0.6.4-1.tar.gz";
    name = "0.6.4-1.tar.gz";
    sha256 = "1be019e96392b50d374dd207e660b3a1e7fac01b3f8ffeb0d7ca1f192b5a2442";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.pyqtwebengine ];

  meta = {
    description = ''Javascript library for visualising behaviour trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
