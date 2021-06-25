
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, qt5 }:
buildRosPackage {
  pname = "ros-galactic-plotjuggler";
  version = "3.2.1-r2";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/galactic/plotjuggler/3.2.1-2.tar.gz";
    name = "3.2.1-2.tar.gz";
    sha256 = "3791ade6fb304f5f1197504231ce09fa42bc5a76e3b165cec1121015c4342ae9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
