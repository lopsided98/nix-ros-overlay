
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, cppzmq, qt5, roslib }:
buildRosPackage {
  pname = "ros-noetic-plotjuggler";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/noetic/plotjuggler/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "e26803abdfb92355c4b76fb6550aebd9d84857ed535732b8a7104f23e40ead2a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
