
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, pkg-config, pluginlib, python-qt-binding, qt-gui, qt6, tinyxml-2 }:
buildRosPackage {
  pname = "ros-lyrical-qt-gui-cpp";
  version = "2.10.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/lyrical/qt_gui_cpp/2.10.7-3.tar.gz";
    name = "2.10.7-3.tar.gz";
    sha256 = "b4dae31db20eb6ae9452083febbaa82acb63f4d1971fe00bc4a63e3191799846";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config python-qt-binding ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib qt-gui qt6.qtbase tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
