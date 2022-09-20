
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt5, tango-icon-theme }:
buildRosPackage {
  pname = "ros-melodic-qt-gui";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "25f883aaa0621d629cabdd188d4f00845aa749127c104dbaf58b3b617f04fa70";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.pyqt5 pythonPackages.setuptools qt5.qtbase ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg tango-icon-theme ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt or PySide bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
