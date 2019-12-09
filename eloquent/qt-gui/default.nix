
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-lint-common, tango-icon-theme, ament-cmake, ament-lint-auto, qt5, ament-index-python, python-qt-binding }:
buildRosPackage {
  pname = "ros-eloquent-qt-gui";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/eloquent/qt_gui/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "91c20b73850e0ac407f3e73448560f5161cd3097bebe3b7c49c8203a18627f24";
  };

  buildType = "ament_cmake";
  buildInputs = [ python3Packages.pyqt5 qt5.qtbase ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ python3Packages.catkin-pkg python-qt-binding ament-index-python tango-icon-theme ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt or PySide bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
