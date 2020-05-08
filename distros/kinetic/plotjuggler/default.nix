
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, catkin, diagnostic-msgs, nav-msgs, qt5, rosbag, rosbag-storage, roscpp, roscpp-serialization, rostime, tf, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-plotjuggler";
  version = "2.6.4-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/kinetic/plotjuggler/2.6.4-1.tar.gz";
    name = "2.6.4-1.tar.gz";
    sha256 = "c0b561fddebadee52496b47e47d33bdf6b02337bc69f3aa16ca5ac0913d2ab92";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils diagnostic-msgs nav-msgs qt5.qtbase qt5.qtdeclarative qt5.qtmultimedia qt5.qtsvg rosbag rosbag-storage roscpp roscpp-serialization rostime tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
