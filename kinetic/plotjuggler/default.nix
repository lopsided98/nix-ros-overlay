
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag-storage, rosbag, catkin, ros-type-introspection, topic-tools, roscpp, rostime, nav-msgs, qt5, binutils, roscpp-serialization, diagnostic-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-plotjuggler";
  version = "2.3.7-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/kinetic/plotjuggler/2.3.7-1.tar.gz";
    name = "2.3.7-1.tar.gz";
    sha256 = "9021ec338ffe4933fff785987e677376da728e265f2a0d97157608918a723153";
  };

  buildType = "catkin";
  buildInputs = [ rosbag-storage qt5.qtmultimedia rosbag ros-type-introspection rostime qt5.qtbase roscpp nav-msgs binutils roscpp-serialization topic-tools diagnostic-msgs qt5.qtdeclarative tf qt5.qtsvg ];
  propagatedBuildInputs = [ rosbag-storage tf qt5.qtmultimedia rosbag ros-type-introspection rostime qt5.qtbase diagnostic-msgs nav-msgs binutils qt5.qtsvg topic-tools roscpp-serialization qt5.qtdeclarative roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
