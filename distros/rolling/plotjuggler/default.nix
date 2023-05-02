
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-plotjuggler";
  version = "3.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/rolling/plotjuggler/3.5.1-2.tar.gz";
    name = "3.5.1-2.tar.gz";
    sha256 = "a22074b0333a55de8261a55e16a8dbad370ee52c28a3f77d033d2ef5e2025d04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ mpl20 ];
  };
}
