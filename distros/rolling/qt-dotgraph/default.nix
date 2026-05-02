
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-qt-binding, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-qt-dotgraph";
  version = "2.10.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_dotgraph/2.10.7-2.tar.gz";
    name = "2.10.7-2.tar.gz";
    sha256 = "454be901f43c2abbfb099d3487cfd5a3bdd95b89b9045ea340b9425d8d3ef9f8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.pydot python3Packages.pygraphviz ];

  meta = {
    description = "qt_dotgraph provides helpers to work with dot graphs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
