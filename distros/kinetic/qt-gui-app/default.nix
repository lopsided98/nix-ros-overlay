
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui }:
buildRosPackage {
  pname = "ros-kinetic-qt-gui-app";
  version = "0.3.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/kinetic/qt_gui_app/0.3.11-0.tar.gz";
    name = "0.3.11-0.tar.gz";
    sha256 = "038f8dfadb1c99a20607a2133611f3aa0d8790fafb1d8958c72b98e30bce034e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
