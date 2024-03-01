
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, cppzmq, lz4, protobuf, qt5, roscpp, roslib, zstd }:
buildRosPackage {
  pname = "ros-noetic-plotjuggler";
  version = "3.9.1-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/noetic/plotjuggler/3.9.1-1.tar.gz";
    name = "3.9.1-1.tar.gz";
    sha256 = "ef91aac791288d5aee91a7bfbc6aaa6c3eeca26a09be802e63d63bf0cc1817c6";
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
