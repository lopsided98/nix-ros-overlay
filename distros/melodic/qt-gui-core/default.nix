
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-dotgraph, qt-gui, qt-gui-app, qt-gui-cpp, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-melodic-qt-gui-core";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui_core/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "0a93acea73be2df4fac02c9aa931f8cc3aa133406796d59f3260ba1c5ff11ac4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-dotgraph qt-gui qt-gui-app qt-gui-cpp qt-gui-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration of the ROS package system and ROS-specific plugins for a Qt-based GUI.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
