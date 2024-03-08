
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, pkg-config, pluginlib, python-qt-binding, qt-gui, qt5, rcpputils, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-rolling-qt-gui-cpp";
  version = "2.7.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_gui_cpp/2.7.2-2.tar.gz";
    name = "2.7.2-2.tar.gz";
    sha256 = "5b4ab49d5f61477753cfdd333d3e99787e4f3e6ed0dd93b470afd5b81611e935";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config python-qt-binding qt5.qtbase ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ pluginlib qt-gui rcpputils tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
