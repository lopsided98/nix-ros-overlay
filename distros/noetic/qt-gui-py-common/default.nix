
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-qt-gui-py-common";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui_py_common/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "974b4ad8ac44f6666f9f23880479f5912839bef52d158f7cbbbefb8022da3e4c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''qt_gui_py_common provides common functionality for GUI plugins written in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
