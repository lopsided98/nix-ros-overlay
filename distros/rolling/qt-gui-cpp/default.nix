
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, pkg-config, pluginlib, python-qt-binding, qt-gui, qt5, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-rolling-qt-gui-cpp";
  version = "2.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_gui_cpp/2.8.3-1.tar.gz";
    name = "2.8.3-1.tar.gz";
    sha256 = "2e403c83195d6332a10721ba20bff1b14901fa7467a1d919e57b83a386120ceb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config python-qt-binding qt5.qtbase ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib qt-gui tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
