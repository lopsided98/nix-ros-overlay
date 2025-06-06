
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, fastcdr, lua, lz4, mosquitto, protobuf, qt5, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-kilted-plotjuggler";
  version = "3.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/kilted/plotjuggler/3.10.3-1.tar.gz";
    name = "3.10.3-1.tar.gz";
    sha256 = "fb0f99f28486c176d6cdc8ead1c8beb8c0323c5a29cc0c69fe8e828d59393ff4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq fastcdr lua lz4 mosquitto protobuf qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras rclcpp zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PlotJuggler: juggle with data";
    license = with lib.licenses; [ mpl20 ];
  };
}
