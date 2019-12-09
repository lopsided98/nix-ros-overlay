
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, cmake-modules, catkin, tinyxml, qt-gui, qt5, pkg-config, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-qt-gui-cpp";
  version = "0.3.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui_cpp/0.3.16-1.tar.gz";
    name = "0.3.16-1.tar.gz";
    sha256 = "cca2020c42d6e54132823369e0799f2b319bbab30e12fb45d6714aacac5dc974";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib cmake-modules qt5.qtbase tinyxml pkg-config python-qt-binding ];
  propagatedBuildInputs = [ pluginlib qt-gui tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
