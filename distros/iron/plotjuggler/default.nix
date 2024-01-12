
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, fastcdr, lz4, protobuf, qt5, rclcpp, zstd }:
buildRosPackage {
  pname = "ros-iron-plotjuggler";
  version = "3.8.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/iron/plotjuggler/3.8.6-2.tar.gz";
    name = "3.8.6-2.tar.gz";
    sha256 = "fd6e945dc04f7485a75ff541a1e380239c2799dfecd49592cf7f2f6e80fc06c1";
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
