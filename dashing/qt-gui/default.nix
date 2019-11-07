
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, qt5, python3Packages, ament-index-python, ament-lint-auto, python-qt-binding, tango-icon-theme }:
buildRosPackage {
  pname = "ros-dashing-qt-gui";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/dashing/qt_gui/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "5c89db11d107fc71ba81088b98507b14613d1b28930185d430985813d90b1964";
  };

  buildType = "ament_cmake";
  buildInputs = [ python3Packages.pyqt5 qt5.qtbase ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python3Packages.catkin-pkg python-qt-binding tango-icon-theme ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt or PySide bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
