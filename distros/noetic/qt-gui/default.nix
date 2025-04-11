
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt5, tango-icon-theme }:
buildRosPackage {
  pname = "ros-noetic-qt-gui";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "3d1c1c878e7ad6fa462648aa7b82b2938e70f49de571d60ef3bcd3989ad3f0b8";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.pyqt5 python3Packages.setuptools qt5.qtbase ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg tango-icon-theme ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt or PySide bindings.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
