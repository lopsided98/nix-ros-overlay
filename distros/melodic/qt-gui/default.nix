
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt5, tango-icon-theme }:
buildRosPackage {
  pname = "ros-melodic-qt-gui";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "5a3d2a1b4ce728bd94af6e0562f6a91439d9f0ebd0141277a8df67976d2dd796";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.pyqt5 qt5.qtbase ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg tango-icon-theme ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt or PySide bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
