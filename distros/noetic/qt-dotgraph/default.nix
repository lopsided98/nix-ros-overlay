
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-qt-dotgraph";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_dotgraph/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "a879051a9279d88ee26a6468b3ce27816868bb3c56c1b80a6eadaa8e2745630a";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ python3Packages.pygraphviz ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.pydot ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''qt_dotgraph provides helpers to work with dot graphs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
