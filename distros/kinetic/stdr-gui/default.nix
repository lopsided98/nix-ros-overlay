
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-msgs, qt4, roscpp, roslib, sensor-msgs, stdr-msgs, stdr-parser, stdr-robot, stdr-server, tf }:
buildRosPackage {
  pname = "ros-kinetic-stdr-gui";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_gui/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "444e19a08b4653cf8e4ec8568da5aa6bc4028b93fff48fc81f8544a60ac8a441";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nav-msgs qt4 roscpp roslib sensor-msgs stdr-msgs stdr-parser stdr-robot stdr-server tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A gui in Qt for visualizing purposes in STDR Simulator.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
