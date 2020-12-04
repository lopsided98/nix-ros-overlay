
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, qt5 }:
buildRosPackage {
  pname = "ros-foxy-plotjuggler";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/foxy/plotjuggler/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "96c9ef8e916243060b29eea86ab62213231536c2aa1bca95baad0cc3e238d126";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
