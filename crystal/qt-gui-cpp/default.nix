
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tinyxml2-vendor, ament-cmake-pytest, pluginlib, ament-cmake, qt-gui, qt5, pkg-config, python-qt-binding }:
buildRosPackage {
  pname = "ros-crystal-qt-gui-cpp";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/crystal/qt_gui_cpp/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "e96c60d3baab759e5bcbfb25f79d4a23bf901e99134d06dd01d2f25490c2abf6";
  };

  buildType = "ament_cmake";
  buildInputs = [ tinyxml2-vendor pluginlib qt5.qtbase pkg-config python-qt-binding ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ pluginlib tinyxml2-vendor qt-gui ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
