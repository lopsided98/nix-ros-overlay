
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding }:
buildRosPackage {
  pname = "ros-galactic-qt-gui-py-common";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/galactic/qt_gui_py_common/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "b56bdebfd106ddf5a9223113c5eca4ae1e7dae65b16d26c10c80a8ff68598391";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui_py_common provides common functionality for GUI plugins written in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
