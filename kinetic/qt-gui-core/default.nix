
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt-gui-app, qt-gui-py-common, catkin, qt-gui-cpp, qt-gui, qt-dotgraph }:
buildRosPackage {
  pname = "ros-kinetic-qt-gui-core";
  version = "0.3.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/kinetic/qt_gui_core/0.3.11-0.tar.gz";
    name = "0.3.11-0.tar.gz";
    sha256 = "454f89e0b49282fa15037b4b074dbe573178add390e71c014905c64f36eb0e55";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-gui-app qt-gui-py-common qt-gui-cpp qt-gui qt-dotgraph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration of the ROS package system and ROS-specific plugins for a Qt-based GUI.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
