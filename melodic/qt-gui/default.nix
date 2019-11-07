
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, qt5, tango-icon-theme }:
buildRosPackage {
  pname = "ros-melodic-qt-gui";
  version = "0.3.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui/0.3.15-1.tar.gz";
    name = "0.3.15-1.tar.gz";
    sha256 = "91e36cedceb4805cc7619ca16ab0ab8e18e6eb94c3bf51e28bd0132d5ddd48e1";
  };

  buildType = "catkin";
  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ python-qt-binding tango-icon-theme ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt or PySide bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
