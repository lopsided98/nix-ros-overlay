
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, fastcdr, lua, lz4, mcap-vendor, nlohmann_json, protobuf, qt5, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-jazzy-plotjuggler";
  version = "3.10.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/jazzy/plotjuggler/3.10.8-1.tar.gz";
    name = "3.10.8-1.tar.gz";
    sha256 = "ba1f3871866d6ddbeb25a8805b2ee3b8a226a8984807c477f94b33f3cfd57511";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq fastcdr lua lz4 mcap-vendor nlohmann_json protobuf qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras rclcpp zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PlotJuggler: juggle with data";
    license = with lib.licenses; [ mpl20 ];
  };
}
