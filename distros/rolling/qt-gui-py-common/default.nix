
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding }:
buildRosPackage {
  pname = "ros-rolling-qt-gui-py-common";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_gui_py_common/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "88030bd3cfa017eba2b0ccd418626a6f85f1e300e7a7e9d231c34214f9464dc6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "qt_gui_py_common provides common functionality for GUI plugins written in Python.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
