
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, pkg-config, pluginlib, python-qt-binding, qt-gui, qt5, tinyxml }:
buildRosPackage {
  pname = "ros-kinetic-qt-gui-cpp";
  version = "0.3.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/kinetic/qt_gui_cpp/0.3.18-1.tar.gz";
    name = "0.3.18-1.tar.gz";
    sha256 = "ad415dc711b3759d9959d160512ce6512fe8f54146b0884783e819db0cc1880b";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules pkg-config python-qt-binding qt5.qtbase ];
  propagatedBuildInputs = [ pluginlib qt-gui tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
