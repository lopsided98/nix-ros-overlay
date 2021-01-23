
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, qt5 }:
buildRosPackage {
  pname = "ros-foxy-plotjuggler";
  version = "3.0.5-r2";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/foxy/plotjuggler/3.0.5-2.tar.gz";
    name = "3.0.5-2.tar.gz";
    sha256 = "1163bdf11db902632f393eb66631b3cbccd14d76a5f9a7498be4cc93ce039231";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
