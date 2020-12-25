
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, cppzmq, qt5, roslib }:
buildRosPackage {
  pname = "ros-noetic-plotjuggler";
  version = "3.0.5-r2";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/noetic/plotjuggler/3.0.5-2.tar.gz";
    name = "3.0.5-2.tar.gz";
    sha256 = "7d4bd97b8bc4fe66677e93278d77c508389453b4a665ff3508809d5a3d2a62f4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
