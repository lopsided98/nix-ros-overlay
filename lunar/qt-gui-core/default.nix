
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt-gui-app, catkin, qt-gui-cpp, qt-gui, qt-dotgraph, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-lunar-qt-gui-core";
  version = "0.3.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/qt_gui_core-release/archive/release/lunar/qt_gui_core/0.3.11-0.tar.gz;
    sha256 = "21c1be35581794b3f4badd5ff2e8292b5a355e0f46db70934bf6d0d83e9bc5a8";
  };

  propagatedBuildInputs = [ qt-gui-cpp qt-gui-app qt-gui qt-dotgraph qt-gui-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration of the ROS package system and ROS-specific plugins for a Qt-based GUI.'';
    #license = lib.licenses.BSD;
  };
}
