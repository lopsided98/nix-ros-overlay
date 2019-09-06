
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt-gui-app, ament-cmake, qt-gui-cpp, qt-gui, qt-dotgraph, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-crystal-qt-gui-core";
  version = "1.0.6-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/qt_gui_core-release/archive/release/crystal/qt_gui_core/1.0.6-1.tar.gz;
    sha256 = "b1b0b36d79f8a747c210b833864f5c311845ea35bdd7a41f7c4c387a897c9204";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ qt-gui-app qt-gui-cpp qt-gui qt-dotgraph qt-gui-py-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Integration of the ROS package system and ROS-specific plugins for a Qt-based GUI.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
