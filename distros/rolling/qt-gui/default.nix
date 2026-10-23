
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages, tango-icons-vendor }:
buildRosPackage {
  pname = "ros-rolling-qt-gui";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_gui/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "90240f56bdb1aa49f039910e78837413b3fcb1a90494b2b84874d1dee31e6551";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.catkin-pkg tango-icons-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt6 or PySide6 bindings.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
