
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, fastcdr, protobuf, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-plotjuggler";
  version = "3.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/jazzy/plotjuggler/3.10.1-1.tar.gz";
    name = "3.10.1-1.tar.gz";
    sha256 = "22265917ba2443c985971f3ab39458d5abdd466d94d62aeb1e66b7dc065f4377";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq fastcdr protobuf qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PlotJuggler: juggle with data";
    license = with lib.licenses; [ mpl20 ];
  };
}
