
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, qt-gui }:
buildRosPackage {
  pname = "ros-noetic-qt-gui-app";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui_app/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "0f1e6ba6eca18e5e5084ca6d34756af91baf3cfacb4247d7861abb87479f2303";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-gui ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
