
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, cmake-modules, catkin, tinyxml, pkg-config, qt-gui, qt5, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-qt-gui-cpp";
  version = "0.3.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui_cpp/0.3.15-1.tar.gz";
    name = "0.3.15-1.tar.gz";
    sha256 = "4cae8a38021b208d44334a954990b4084c480ef3096024310c86a5336997a07a";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules pluginlib tinyxml pkg-config qt5.qtbase python-qt-binding ];
  propagatedBuildInputs = [ tinyxml qt-gui pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
