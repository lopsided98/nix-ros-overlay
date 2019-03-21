
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt-gui-app, catkin, qt-gui-cpp, qt-gui, qt-dotgraph, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-melodic-qt-gui-core";
  version = "0.3.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui_core/0.3.11-0.tar.gz;
    sha256 = "c49816fb690393c749f341c95ac6e0ee7000121701ea3ec5597297712d90aa9a";
  };

  propagatedBuildInputs = [ qt-gui-cpp qt-gui-app qt-gui qt-dotgraph qt-gui-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration of the ROS package system and ROS-specific plugins for a Qt-based GUI.'';
    #license = lib.licenses.BSD;
  };
}
