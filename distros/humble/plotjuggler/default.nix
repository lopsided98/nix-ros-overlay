
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-humble-plotjuggler";
  version = "3.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/humble/plotjuggler/3.5.1-1.tar.gz";
    name = "3.5.1-1.tar.gz";
    sha256 = "bcc9232806caaa4729171b1243bb4d7aa7568e29ccc37fc5606e87f772902747";
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
