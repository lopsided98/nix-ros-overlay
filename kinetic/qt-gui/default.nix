
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, tango-icon-theme, qt5, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-qt-gui";
  version = "0.3.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/kinetic/qt_gui/0.3.11-0.tar.gz";
    name = "0.3.11-0.tar.gz";
    sha256 = "48c6cd5dae43672949a1d97f639bec05eb5cb58e9fe6c2f09d80f6c70e2542bd";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.pyqt5 qt5.qtbase ];
  propagatedBuildInputs = [ pythonPackages.rospkg tango-icon-theme python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt or PySide bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
