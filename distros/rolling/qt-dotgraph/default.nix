
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-qt-binding, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-qt-dotgraph";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_dotgraph/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "faf2c2effba6231407108a5af7cd2283097aad3c32886603fd2fd762b47d4379";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.pydot python3Packages.pygraphviz ];

  meta = {
    description = "qt_dotgraph provides helpers to work with dot graphs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
