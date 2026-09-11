
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-qt-binding, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-qt-dotgraph";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_dotgraph/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "e5d6fd88c9553cae9a3f02df14d5a69ff89a14ad8992ab6ee1c370d4f363914a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.pydot python3Packages.pygraphviz ];

  meta = {
    description = "qt_dotgraph provides helpers to work with dot graphs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
