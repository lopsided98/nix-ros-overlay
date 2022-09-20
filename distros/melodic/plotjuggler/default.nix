
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, cppzmq, lz4, qt5, roscpp, roslib, zstd }:
buildRosPackage {
  pname = "ros-melodic-plotjuggler";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/melodic/plotjuggler/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "4c121e9e05c06a734773f922bb792853ac950889143cfd134deaaa36045b3a0b";
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
