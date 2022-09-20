
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, pkg-config, pluginlib, python-qt-binding, qt-gui, qt5, rcpputils, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-galactic-qt-gui-cpp";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/galactic/qt_gui_cpp/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "d47ca95211b80157e9791192e2289b1bddcf7c694e1b4a1e9967c4b0db192a07";
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
