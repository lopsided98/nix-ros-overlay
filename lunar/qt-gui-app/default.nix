
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui }:
buildRosPackage {
  pname = "ros-lunar-qt-gui-app";
  version = "0.3.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/qt_gui_core-release/archive/release/lunar/qt_gui_app/0.3.11-0.tar.gz;
    sha256 = "048953820761fb8667d62b9a9aafb565df2444222152dde8b2c2ade52c4a86f7";
  };

  propagatedBuildInputs = [ qt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.'';
    #license = lib.licenses.BSD;
  };
}
