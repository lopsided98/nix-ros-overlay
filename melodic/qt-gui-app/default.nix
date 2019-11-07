
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui }:
buildRosPackage {
  pname = "ros-melodic-qt-gui-app";
  version = "0.3.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui_app/0.3.15-1.tar.gz";
    name = "0.3.15-1.tar.gz";
    sha256 = "4a844c1f2f020e5bd924bb25423dc0539013bf9eae996eb55441a60d4a3c2bce";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
