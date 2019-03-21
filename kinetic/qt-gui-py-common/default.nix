
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-qt-gui-py-common";
  version = "0.3.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/qt_gui_core-release/archive/release/kinetic/qt_gui_py_common/0.3.11-0.tar.gz;
    sha256 = "c227fd0e113edc63bc1e82b609e8ece3828111856fda0837236548746bdf78b4";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_py_common provides common functionality for GUI plugins written in Python.'';
    #license = lib.licenses.BSD;
  };
}
