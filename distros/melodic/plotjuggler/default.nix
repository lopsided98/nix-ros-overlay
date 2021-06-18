
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, cppzmq, qt5, roslib }:
buildRosPackage {
  pname = "ros-melodic-plotjuggler";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/melodic/plotjuggler/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "306c00500f6af51b436341c4a6fab0e76a088bcc152e9b78b72d5f0366bc4032";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
