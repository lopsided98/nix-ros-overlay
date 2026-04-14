
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, pkg-config, pluginlib, python-qt-binding, qt-gui, qt6, tinyxml-2 }:
buildRosPackage {
  pname = "ros-rolling-qt-gui-cpp";
  version = "2.10.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_gui_cpp/2.10.4-1.tar.gz";
    name = "2.10.4-1.tar.gz";
    sha256 = "a5aafa7dcb0d65d3fbe7ea3fba27cbb616d086fc6c323815f059799f82eb34f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config python-qt-binding qt6.qtbase ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib qt-gui tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
