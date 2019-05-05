
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, qt5, python-qt-binding, tango-icon-theme }:
buildRosPackage {
  pname = "ros-lunar-qt-gui";
  version = "0.3.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/qt_gui_core-release/archive/release/lunar/qt_gui/0.3.11-0.tar.gz;
    sha256 = "53e892ec3cee7a192e1d428cea6cafdd0c6eb1fcf14731631bb04756e1429745";
  };

  buildInputs = [ pythonPackages.pyqt5 qt5.qtbase ];
  propagatedBuildInputs = [ pythonPackages.rospkg python-qt-binding tango-icon-theme ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt or PySide bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
