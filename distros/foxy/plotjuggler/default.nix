
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-plotjuggler";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/foxy/plotjuggler/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "5d4be39f01bc0c2c6970d9ab928c31c4247c82db04378b4d5bc8d21d33e49af8";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
