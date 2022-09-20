
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt-dotgraph, qt-gui, qt-gui-app, qt-gui-cpp, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-galactic-qt-gui-core";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/galactic/qt_gui_core/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "954ad0a44d38a5d84fbfa4c7e13bafa09e2c8e2e49f9dbe817967f7b07ad878b";
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
