
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, cppzmq, qt5, roscpp, roslib }:
buildRosPackage {
  pname = "ros-noetic-plotjuggler";
  version = "3.4.5-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/noetic/plotjuggler/3.4.5-1.tar.gz";
    name = "3.4.5-1.tar.gz";
    sha256 = "963ee8025d8304980ba6265d9ce86264e0130a120860f7d5ebaff4aa6ae859f4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
