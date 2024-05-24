
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding }:
buildRosPackage {
  pname = "ros-jazzy-qt-gui-py-common";
  version = "2.7.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/jazzy/qt_gui_py_common/2.7.4-2.tar.gz";
    name = "2.7.4-2.tar.gz";
    sha256 = "96dab88d475ec53fbe396968a805e1d545684ec3e2a70bc72264ecda7f03e917";
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
