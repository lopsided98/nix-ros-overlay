
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-dotgraph, qt-gui, qt-gui-app, qt-gui-cpp, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-noetic-qt-gui-core";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui_core/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "17b45038ad1ad5ceb8f0a09ce0c45f736c1f0cc8093cf10a42984c7128201e4a";
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
