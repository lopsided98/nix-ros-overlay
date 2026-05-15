
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages, tango-icons-vendor }:
buildRosPackage {
  pname = "ros-lyrical-qt-gui";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/lyrical/qt_gui/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "5718542938f2babc337c2937e4143147080687e4ee7750449fe12cb2af4adb78";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
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
