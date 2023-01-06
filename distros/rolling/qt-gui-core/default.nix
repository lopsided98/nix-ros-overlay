
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt-dotgraph, qt-gui, qt-gui-app, qt-gui-cpp, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-rolling-qt-gui-core";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_gui_core/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "93fa0e8cf0c7267b23b3545f2fe5bdc91665178748a9c773803ead734687cb7a";
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
