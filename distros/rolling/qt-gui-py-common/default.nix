
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding }:
buildRosPackage {
  pname = "ros-rolling-qt-gui-py-common";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_gui_py_common/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "73e6542b8fe50d1a38d560279088f80ed1081f215d6760318ef0af5667b58b82";
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
