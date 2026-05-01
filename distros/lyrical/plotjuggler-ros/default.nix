
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, fmt, plotjuggler, plotjuggler-msgs, qt5, rclcpp, rcpputils, rosbag2-transport, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-plotjuggler-ros";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/lyrical/plotjuggler_ros/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "513b3dabcf0f443cc8a76d2d738daeb13882d366c65fc4cf4d9da15dfbcdf77c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ binutils boost fmt plotjuggler plotjuggler-msgs qt5.qtbase qt5.qtsvg qt5.qtwebsockets rclcpp rcpputils rosbag2-transport tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PlotJuggler plugin for ROS";
    license = with lib.licenses; [ "AGPLv3" ];
  };
}
