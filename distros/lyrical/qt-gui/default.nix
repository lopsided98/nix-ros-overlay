
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages, tango-icons-vendor }:
buildRosPackage {
  pname = "ros-lyrical-qt-gui";
  version = "2.10.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/lyrical/qt_gui/2.10.7-3.tar.gz";
    name = "2.10.7-3.tar.gz";
    sha256 = "7f94ced325cc1d03e4cdbdbe40e2a7cf48310ebe68b456972e1e6d8ab53c8750";
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
