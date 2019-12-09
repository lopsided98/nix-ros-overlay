
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake, ament-lint-auto, ament-index-python, python-qt-binding }:
buildRosPackage {
  pname = "ros-eloquent-qt-gui-py-common";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/eloquent/qt_gui_py_common/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "9fcbf780e45c026317601f5fe384b60f17dd6e79d8d1ef7c87e3114c90271aaa";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui_py_common provides common functionality for GUI plugins written in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
