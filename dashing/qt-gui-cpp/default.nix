
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, pluginlib, pkg-config, tinyxml2-vendor, qt5, qt-gui, python-qt-binding }:
buildRosPackage rec {
  pname = "ros-dashing-qt-gui-cpp";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/dashing/qt_gui_cpp/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "2aab12424c2bdab4d1c6aa4fa955dd5054a93083b111f5d6cd000b2a12b3f55a";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib qt5.qtbase pkg-config tinyxml2-vendor python-qt-binding ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ tinyxml2-vendor qt-gui pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
