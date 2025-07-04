
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt-dotgraph, qt-gui, qt-gui-app, qt-gui-cpp, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-rolling-qt-gui-core";
  version = "2.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_gui_core/2.10.1-1.tar.gz";
    name = "2.10.1-1.tar.gz";
    sha256 = "c5e412fe6b4637c44e0273da8368c0072587b2245e207a72aef0c20b6c00133e";
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
