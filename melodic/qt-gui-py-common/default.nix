
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-qt-gui-py-common";
  version = "0.3.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui_py_common/0.3.11-0.tar.gz;
    sha256 = "d665864b786a0267d7c9ad26cc7d0af998b4e51b99941e43cd551cf4b0c08cae";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_py_common provides common functionality for GUI plugins written in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
