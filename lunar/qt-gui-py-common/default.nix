
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-qt-gui-py-common";
  version = "0.3.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/qt_gui_core-release/archive/release/lunar/qt_gui_py_common/0.3.11-0.tar.gz;
    sha256 = "ab7cd93f2db5ee0b56d6bef7053ab2fccb211e27e79ec8bd116e8248407e9a0e";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_py_common provides common functionality for GUI plugins written in Python.'';
    #license = lib.licenses.BSD;
  };
}
