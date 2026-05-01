
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-qt-binding, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-qt-dotgraph";
  version = "2.10.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/lyrical/qt_dotgraph/2.10.7-3.tar.gz";
    name = "2.10.7-3.tar.gz";
    sha256 = "e3324f8c3141f61f7c80139c77a47a7d5f13526629147e2dbce439ab6ab9cff4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.pydot python3Packages.pygraphviz ];

  meta = {
    description = "qt_dotgraph provides helpers to work with dot graphs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
