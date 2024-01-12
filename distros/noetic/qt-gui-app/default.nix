
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, qt-gui }:
buildRosPackage {
  pname = "ros-noetic-qt-gui-app";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui_app/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "ac27afd75d8effd07b6654b7b6e6d71eba0c4b8d171f01516db07cbccee5f5a7";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ qt-gui ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
