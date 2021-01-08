
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-qt-gui-py-common";
  version = "0.3.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/kinetic/qt_gui_py_common/0.3.17-1.tar.gz";
    name = "0.3.17-1.tar.gz";
    sha256 = "56476af4ba02b03e923041aac3e463210ebb85177daacb38bcfc17bd95a61cae";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_py_common provides common functionality for GUI plugins written in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
