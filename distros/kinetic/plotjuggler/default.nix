
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, diagnostic-msgs, geometry-msgs, nav-msgs, plotjuggler-msgs, qt5, rosbag-storage, roscpp, roscpp-serialization, sensor-msgs, tf, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-plotjuggler";
  version = "2.8.2-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/kinetic/plotjuggler/2.8.2-1.tar.gz";
    name = "2.8.2-1.tar.gz";
    sha256 = "c5f377d38abb12e3dc0550e725d9f97f8fdbac6000e5a723fcdb9de8194b1a1f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost diagnostic-msgs geometry-msgs nav-msgs plotjuggler-msgs qt5.qtbase qt5.qtdeclarative qt5.qtmultimedia qt5.qtsvg rosbag-storage roscpp roscpp-serialization sensor-msgs tf tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
