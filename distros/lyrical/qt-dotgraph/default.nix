
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-qt-binding, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-qt-dotgraph";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/lyrical/qt_dotgraph/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "63b45837281259fd7c3a7f731a56ec40544e9d86457d4d6353834ac7ada3a1b4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.pydot python3Packages.pygraphviz ];

  meta = {
    description = "qt_dotgraph provides helpers to work with dot graphs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
