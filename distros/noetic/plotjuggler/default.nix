
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, cppzmq, lz4, protobuf, qt5, roscpp, roslib, zstd }:
buildRosPackage {
  pname = "ros-noetic-plotjuggler";
  version = "3.8.10-r2";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/noetic/plotjuggler/3.8.10-2.tar.gz";
    name = "3.8.10-2.tar.gz";
    sha256 = "37a34873040c11fc9d5bce115cec66553d7aad8d3e8b7e6a9c4415bfeb7aeef6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ binutils boost cppzmq lz4 protobuf qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras roscpp roslib zstd ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ mpl20 ];
  };
}
