
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt-gui-app, catkin, qt-gui-cpp, qt-gui, qt-dotgraph, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-melodic-qt-gui-core";
  version = "0.3.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui_core/0.3.15-1.tar.gz";
    name = "0.3.15-1.tar.gz";
    sha256 = "7e88f8db78ec7edc811a35dc989172dedfc4a180813104434a8fab5064cda22e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-gui-app qt-gui-cpp qt-gui qt-dotgraph qt-gui-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration of the ROS package system and ROS-specific plugins for a Qt-based GUI.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
