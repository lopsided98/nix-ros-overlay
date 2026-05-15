
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt-dotgraph, qt-gui, qt-gui-app, qt-gui-cpp, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-lyrical-qt-gui-core";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/lyrical/qt_gui_core/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "0c7d273539c077f9f3632f8517c583e6abd15a1c348c59762dfe04798861394f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ qt-dotgraph qt-gui qt-gui-app qt-gui-cpp qt-gui-py-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Integration of the ROS package system and ROS-specific plugins for a Qt-based GUI.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
