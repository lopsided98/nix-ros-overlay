
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, qt5 }:
buildRosPackage {
  pname = "ros-foxy-plotjuggler";
  version = "3.0.7-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/foxy/plotjuggler/3.0.7-1.tar.gz";
    name = "3.0.7-1.tar.gz";
    sha256 = "da9b752c1dffdb1399aca9447286f0c0c37298a2e5049aba6f167df42b98cc28";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
