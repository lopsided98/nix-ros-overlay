
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, qt-gui }:
buildRosPackage {
  pname = "ros-noetic-qt-gui-app";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui_app/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "b5f9e862e1745292dad611028e4a91647ee1f4925ef03c82555db6f0a7b2f8a6";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ qt-gui ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
