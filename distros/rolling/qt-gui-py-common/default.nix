
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding }:
buildRosPackage {
  pname = "ros-rolling-qt-gui-py-common";
  version = "2.7.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_gui_py_common/2.7.2-2.tar.gz";
    name = "2.7.2-2.tar.gz";
    sha256 = "d484dd90d05e982f86a47ecf3d6e05cd6eb1018105d1be32ecc58b587ba23a35";
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
