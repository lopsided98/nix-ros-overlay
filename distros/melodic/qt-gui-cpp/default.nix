
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, pkg-config, pluginlib, python-qt-binding, pythonPackages, qt-gui, qt5, tinyxml }:
buildRosPackage {
  pname = "ros-melodic-qt-gui-cpp";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui_cpp/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "83431ed54b1389a4071841ea4f95c30fa47ff31e9df50cf85e8a978b1fecbfcb";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules pkg-config python-qt-binding pythonPackages.setuptools qt5.qtbase ];
  propagatedBuildInputs = [ pluginlib qt-gui tinyxml ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
