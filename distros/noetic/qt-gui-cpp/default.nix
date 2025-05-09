
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, pkg-config, pluginlib, python-qt-binding, python3Packages, qt-gui, qt5, tinyxml }:
buildRosPackage {
  pname = "ros-noetic-qt-gui-cpp";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui_cpp/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "55ce9c40bae979986f0d5baa620921178953acc83269819b92de9fdf671ad9e9";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules pkg-config python-qt-binding python3Packages.setuptools qt5.qtbase ];
  propagatedBuildInputs = [ pluginlib qt-gui tinyxml ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
