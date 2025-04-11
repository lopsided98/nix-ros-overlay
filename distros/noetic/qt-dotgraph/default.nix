
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-qt-dotgraph";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_dotgraph/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "6b0c41bee3c81dfcd1c733681e3d6294395df19b71946cc6c3d0ac73fb21199d";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ python3Packages.pygraphviz ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.pydot ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "qt_dotgraph provides helpers to work with dot graphs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
