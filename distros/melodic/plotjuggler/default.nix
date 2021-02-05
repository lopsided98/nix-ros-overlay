
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, cppzmq, qt5, roslib }:
buildRosPackage {
  pname = "ros-melodic-plotjuggler";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/melodic/plotjuggler/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "1c90bacba37eda2632bb2c7e971ee58c97d9e8dc6bbea4ed8c071287455b00d2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
