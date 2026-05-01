
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, data-tamer-cpp, fmt, lua, lz4, nlohmann_json, protobuf, qt5, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-lyrical-plotjuggler";
  version = "3.14.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/lyrical/plotjuggler/3.14.4-3.tar.gz";
    name = "3.14.4-3.tar.gz";
    sha256 = "e01fbaf42260d3f9abe12397ee73d1f5f7271926fbf87def386a106f2813e659";
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
