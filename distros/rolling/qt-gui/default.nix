
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages, qt5, tango-icons-vendor }:
buildRosPackage {
  pname = "ros-rolling-qt-gui";
  version = "2.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_gui/2.8.3-1.tar.gz";
    name = "2.8.3-1.tar.gz";
    sha256 = "c27fac70f820926e1ec8c5021b084e1d32c90f61da92c5007be4c3e8fa3afdfc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3Packages.pyqt5 qt5.qtbase ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.catkin-pkg tango-icons-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt or PySide bindings.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
