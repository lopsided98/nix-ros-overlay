
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt5, tango-icon-theme }:
buildRosPackage {
  pname = "ros-noetic-qt-gui";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "d5020bbb2db4c674cf9b9d153f50d3c5727f8dc4b34c37e73d9bb2064da2184d";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.pyqt5 qt5.qtbase ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg tango-icon-theme ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt or PySide bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
