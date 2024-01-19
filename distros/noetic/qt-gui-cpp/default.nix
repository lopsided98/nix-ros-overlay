
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, pkg-config, pluginlib, python-qt-binding, python3Packages, qt-gui, qt5, tinyxml }:
buildRosPackage {
  pname = "ros-noetic-qt-gui-cpp";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui_cpp/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "4673918813e1660f1c5b05e49e7ad869fd9c91507972f38262efa79665d10fbe";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules pkg-config python-qt-binding python3Packages.setuptools qt5.qtbase ];
  propagatedBuildInputs = [ pluginlib qt-gui tinyxml ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
