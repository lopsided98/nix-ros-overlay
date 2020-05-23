
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui }:
buildRosPackage {
  pname = "ros-noetic-qt-gui-app";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui_app/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "47aee409ecd4405715720b14a5c024fe020f9f8b28b45683906fcd0999faa4b1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
