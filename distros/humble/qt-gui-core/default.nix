
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt-dotgraph, qt-gui, qt-gui-app, qt-gui-cpp, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-humble-qt-gui-core";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/humble/qt_gui_core/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "6f7c0869848b935fb2dd9148a71e0934a6f846327ed37c3d3d28618fbe28d34c";
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
