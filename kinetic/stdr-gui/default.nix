
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, nav-msgs, stdr-robot, qt4, tf, roslib, catkin, stdr-server, roscpp, stdr-parser, stdr-msgs }:
buildRosPackage {
  pname = "ros-kinetic-stdr-gui";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_gui/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "444e19a08b4653cf8e4ec8568da5aa6bc4028b93fff48fc81f8544a60ac8a441";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs nav-msgs stdr-robot qt4 tf roslib stdr-server roscpp stdr-parser stdr-msgs ];
  propagatedBuildInputs = [ sensor-msgs nav-msgs stdr-robot qt4 tf roslib stdr-server roscpp stdr-parser stdr-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A gui in Qt for visualizing purposes in STDR Simulator.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
