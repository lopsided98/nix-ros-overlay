
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-humble-plotjuggler";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/humble/plotjuggler/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "00dbc8be0f111b5945f2bca06562d5e560045a7d8cb4550c4daa6dc7f91c3410";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
