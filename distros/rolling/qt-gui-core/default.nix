
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt-dotgraph, qt-gui, qt-gui-app, qt-gui-cpp, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-rolling-qt-gui-core";
  version = "2.7.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_gui_core/2.7.2-2.tar.gz";
    name = "2.7.2-2.tar.gz";
    sha256 = "d0614c40f2cb920cb746939ece7a147eb910b4d57b28996c4e0c99a55371559e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ qt-dotgraph qt-gui qt-gui-app qt-gui-cpp qt-gui-py-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Integration of the ROS package system and ROS-specific plugins for a Qt-based GUI.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
