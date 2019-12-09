
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, python-qt-binding, catkin }:
buildRosPackage {
  pname = "ros-melodic-qt-gui-py-common";
  version = "0.3.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui_py_common/0.3.16-1.tar.gz";
    name = "0.3.16-1.tar.gz";
    sha256 = "666a8441e2899dab7bf4f2bc8e01b5bb346b412bbcf5483c099f4cf33806d5a4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.rospkg python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_py_common provides common functionality for GUI plugins written in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
