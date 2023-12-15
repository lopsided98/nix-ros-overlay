
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, cppzmq, lz4, protobuf, qt5, roscpp, roslib, zstd }:
buildRosPackage {
  pname = "ros-noetic-plotjuggler";
  version = "3.8.3-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/noetic/plotjuggler/3.8.3-1.tar.gz";
    name = "3.8.3-1.tar.gz";
    sha256 = "5252e088ebf95df64438c392838763068962275f0900bdd28e111a5dce510479";
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
