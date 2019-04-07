
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, cmake-modules, catkin, tinyxml, pkg-config, qt-gui, qt5, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-qt-gui-cpp";
  version = "0.3.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui_cpp/0.3.11-0.tar.gz;
    sha256 = "fbbba01e82d3c63dfeab0fdc9caac8916de97295a8e8c08e715dc965e69dc545";
  };

  buildInputs = [ qt5.qtbase cmake-modules pluginlib python-qt-binding tinyxml pkg-config ];
  propagatedBuildInputs = [ pluginlib qt-gui tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.'';
    #license = lib.licenses.BSD;
  };
}
