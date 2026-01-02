
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, data-tamer-cpp, fmt, lua, lz4, nlohmann_json, protobuf, qt5, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-humble-plotjuggler";
  version = "3.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/humble/plotjuggler/3.15.0-1.tar.gz";
    name = "3.15.0-1.tar.gz";
    sha256 = "28ada89f3c3312b33cb5d42658f1bed8e600f1d8e7100ac348dd75b3c0b84d4f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq data-tamer-cpp fmt lua lz4 nlohmann_json protobuf qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras rclcpp zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PlotJuggler: juggle with data";
    license = with lib.licenses; [ mpl20 ];
  };
}
