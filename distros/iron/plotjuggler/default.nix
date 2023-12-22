
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, fastcdr, lz4, protobuf, qt5, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-iron-plotjuggler";
  version = "3.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/iron/plotjuggler/3.8.3-1.tar.gz";
    name = "3.8.3-1.tar.gz";
    sha256 = "aa7b749bff54a040112643cae9e8edaf230684b07c26378ecb6d30af06e3b1b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq fastcdr lz4 protobuf qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras rclcpp zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ mpl20 ];
  };
}
