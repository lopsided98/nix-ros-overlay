
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, fastcdr, lz4, protobuf, qt5, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-humble-plotjuggler";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/humble/plotjuggler/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "737a6357d24c07791f3695abcee345bb659588d637d11a71eacd80e662b6bf63";
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
