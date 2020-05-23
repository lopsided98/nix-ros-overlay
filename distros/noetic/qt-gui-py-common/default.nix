
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages }:
buildRosPackage {
  pname = "ros-noetic-qt-gui-py-common";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/noetic/qt_gui_py_common/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "0e99e1f9b5075fddd8809ec0cc4441840a8c2efafb4a347d7e32391952c6f894";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_py_common provides common functionality for GUI plugins written in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
