
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, cppzmq, qt5, roscpp, roslib }:
buildRosPackage {
  pname = "ros-melodic-plotjuggler";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/melodic/plotjuggler/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "b0436fcfbf375334b35ac5e009a2cd3cb10f586c25f8bc9032391cca8b918899";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
