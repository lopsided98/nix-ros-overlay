
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt5, tango-icon-theme }:
buildRosPackage {
  pname = "ros-kinetic-qt-gui";
  version = "0.3.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/kinetic/qt_gui/0.3.17-1.tar.gz";
    name = "0.3.17-1.tar.gz";
    sha256 = "5fc655e7739a03accac34205366f3d76cc8f4e1ff62c197dd335815435099450";
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
