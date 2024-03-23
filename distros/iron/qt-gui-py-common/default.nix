
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding }:
buildRosPackage {
  pname = "ros-iron-qt-gui-py-common";
  version = "2.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/iron/qt_gui_py_common/2.4.3-1.tar.gz";
    name = "2.4.3-1.tar.gz";
    sha256 = "9fe71215dbcd019c490196c2fbda38339d575c786a31859b907cd0871131dbb8";
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
