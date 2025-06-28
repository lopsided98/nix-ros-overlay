
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, fastcdr, lua, lz4, mosquitto, nlohmann_json, protobuf, qt5, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-rolling-plotjuggler";
  version = "3.10.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/rolling/plotjuggler/3.10.6-1.tar.gz";
    name = "3.10.6-1.tar.gz";
    sha256 = "a04e3446d1237992652281d729b57e3edece028cc69dc877e82df4c4b7697afa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq fastcdr lua lz4 mosquitto nlohmann_json protobuf qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras rclcpp zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PlotJuggler: juggle with data";
    license = with lib.licenses; [ mpl20 ];
  };
}
