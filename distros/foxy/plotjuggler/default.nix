
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-plotjuggler";
  version = "3.5.1-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/foxy/plotjuggler/3.5.1-1.tar.gz";
    name = "3.5.1-1.tar.gz";
    sha256 = "357cac3cc9e3db8e2249559d5f0030717c28ac6f3fcb8f23de7ab3f0cdcb05ba";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ mpl20 ];
  };
}
