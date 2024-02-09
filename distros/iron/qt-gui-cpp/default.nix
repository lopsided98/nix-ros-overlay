
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, pkg-config, pluginlib, python-qt-binding, qt-gui, qt5, rcpputils, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-iron-qt-gui-cpp";
  version = "2.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/iron/qt_gui_cpp/2.4.3-1.tar.gz";
    name = "2.4.3-1.tar.gz";
    sha256 = "dbc5965153b1c65be8372fb6b725e94c1c4042ca95bc35fd46ee6647d7b931c0";
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
