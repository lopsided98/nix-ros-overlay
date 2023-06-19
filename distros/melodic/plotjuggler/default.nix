
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, cppzmq, lz4, qt5, roscpp, roslib, zstd }:
buildRosPackage {
  pname = "ros-melodic-plotjuggler";
  version = "3.7.1-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/melodic/plotjuggler/3.7.1-1.tar.gz";
    name = "3.7.1-1.tar.gz";
    sha256 = "7afb92fd9d3e75e503f4bb4482e5c811627ec3c89a3e67fc6410479720c4ce0d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ binutils boost cppzmq lz4 qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras roscpp roslib zstd ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ mpl20 ];
  };
}
