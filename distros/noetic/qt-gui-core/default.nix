
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-dotgraph, qt-gui, qt-gui-app, qt-gui-cpp, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-noetic-qt-gui-core";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui_core/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "bd6c6b557b05586a6d492d2098e596164bc05e411b55676e5c0b55948afacf35";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt-dotgraph qt-gui qt-gui-app qt-gui-cpp qt-gui-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Integration of the ROS package system and ROS-specific plugins for a Qt-based GUI.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
