
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, cppzmq, qt5, roslib }:
buildRosPackage {
  pname = "ros-noetic-plotjuggler";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/noetic/plotjuggler/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "0bf81812bb0126f18b7b63246cbb7eab86fbef63896dba3eae517126f0460a85";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
