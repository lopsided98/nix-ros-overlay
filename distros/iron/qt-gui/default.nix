
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages, qt5, tango-icons-vendor }:
buildRosPackage {
  pname = "ros-iron-qt-gui";
  version = "2.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/iron/qt_gui/2.4.3-1.tar.gz";
    name = "2.4.3-1.tar.gz";
    sha256 = "0f3fc26019c2a71dea1808c16adeb1bf706c1f71b0de15a1c1d16de36d3eb17d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3Packages.pyqt5 qt5.qtbase ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.catkin-pkg tango-icons-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt or PySide bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
