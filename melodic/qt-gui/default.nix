
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, qt5, python-qt-binding, tango-icon-theme }:
buildRosPackage {
  pname = "ros-melodic-qt-gui";
  version = "0.3.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui/0.3.11-0.tar.gz;
    sha256 = "4a87192e0c9880e2d7d14b67c3ee5d156a5bc6d1e11f8e4a23a3ced3d74e57b1";
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
