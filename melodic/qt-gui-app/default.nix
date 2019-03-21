
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui }:
buildRosPackage {
  pname = "ros-melodic-qt-gui-app";
  version = "0.3.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui_app/0.3.11-0.tar.gz;
    sha256 = "9906def7abafbaa4151394b237533e1e449743d63ba183d32b33f303fd1e2907";
  };

  propagatedBuildInputs = [ qt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.'';
    #license = lib.licenses.BSD;
  };
}
