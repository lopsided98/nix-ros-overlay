
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-qt-gui-py-common";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui_py_common/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "fa7d2b35a2513e6a10353cde91a8cbb1ad8e9eafee2f25d59b69c2f2187edd61";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''qt_gui_py_common provides common functionality for GUI plugins written in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
