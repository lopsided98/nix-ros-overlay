
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, plotjuggler, qt5, rclcpp, rcpputils, rosbag2, rosbag2-transport, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-plotjuggler-ros";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/rolling/plotjuggler_ros/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "ce540bc291b3bd691c732ade75998a5dfac2a7a1e4beda55ee6bc8ecd50a3b00";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ binutils boost plotjuggler qt5.qtbase qt5.qtsvg qt5.qtwebsockets rclcpp rcpputils rosbag2 rosbag2-transport tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler plugin for ROS'';
    license = with lib.licenses; [ "AGPLv3" ];
  };
}
