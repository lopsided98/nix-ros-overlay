
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, tango-icon-theme, qt5, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-qt-gui";
  version = "0.3.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui/0.3.16-1.tar.gz";
    name = "0.3.16-1.tar.gz";
    sha256 = "294f940b75e3efe8e40c745c1e5bb9f7fbd09d7d50ff7e0b0bfd930e77f18433";
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
