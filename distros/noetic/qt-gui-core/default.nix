
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-dotgraph, qt-gui, qt-gui-app, qt-gui-cpp, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-noetic-qt-gui-core";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui_core/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "ead85c48b23541fa5c9cd598bfc43d2dad512c25a9710b156e2a22cc35ce212e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-dotgraph qt-gui qt-gui-app qt-gui-cpp qt-gui-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration of the ROS package system and ROS-specific plugins for a Qt-based GUI.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
