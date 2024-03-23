
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, fastcdr, lz4, protobuf, qt5, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-iron-plotjuggler";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/iron/plotjuggler/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "d8ffae331afa4491428eaacecdcf19120ca4f1f676f5422bb84361b6688e038d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq fastcdr lz4 protobuf qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras rclcpp zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PlotJuggler: juggle with data";
    license = with lib.licenses; [ mpl20 ];
  };
}
