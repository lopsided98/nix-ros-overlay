
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt-gui, catkin }:
buildRosPackage {
  pname = "ros-melodic-qt-gui-app";
  version = "0.3.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui_app/0.3.16-1.tar.gz";
    name = "0.3.16-1.tar.gz";
    sha256 = "6b509c9dd2f3dd5494adc0528b87278224412f3ae655f26342489cfa5d2dca55";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
