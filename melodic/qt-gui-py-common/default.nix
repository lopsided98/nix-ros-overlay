
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-qt-gui-py-common";
  version = "0.3.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_gui_py_common/0.3.15-1.tar.gz";
    name = "0.3.15-1.tar.gz";
    sha256 = "ae08db249a7491a8ce21ba8a0e2b9463e1263d8c7fe29299c6768664e2fe5ce6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_gui_py_common provides common functionality for GUI plugins written in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
