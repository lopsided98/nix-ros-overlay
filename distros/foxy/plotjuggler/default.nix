
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, qt5 }:
buildRosPackage {
  pname = "ros-foxy-plotjuggler";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/foxy/plotjuggler/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "2c7a316e1ecfbe23f83e0b43961e1f0b634d9496045bb157ff571cad9965f461";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
