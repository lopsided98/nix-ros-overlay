
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, cppzmq, qt5, roscpp, roslib }:
buildRosPackage {
  pname = "ros-melodic-plotjuggler";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/melodic/plotjuggler/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "c15afb30c09177e2b7b52a5636ccc445c190f0c47d9373125f9da32d5e4427d1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ mpl20 ];
  };
}
