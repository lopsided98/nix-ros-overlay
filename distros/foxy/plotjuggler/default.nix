
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, fastcdr, lz4, qt5, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-foxy-plotjuggler";
  version = "3.7.1-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/foxy/plotjuggler/3.7.1-1.tar.gz";
    name = "3.7.1-1.tar.gz";
    sha256 = "8b0b92b37f11374e6f777e510e9268be69369735fc3a1e32fba5d4f55a61bd29";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq fastcdr lz4 qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras rclcpp zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ mpl20 ];
  };
}
