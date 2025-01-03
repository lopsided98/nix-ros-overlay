
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, plotjuggler, qt5, rclcpp, rcpputils, ros-environment, rosbag2, rosbag2-transport, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-plotjuggler-ros";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/rolling/plotjuggler_ros/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "6deeee8b560e2b931cd3d1f705fb1a9202588f5ee32c991c041e0e27e502d00d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ binutils boost plotjuggler qt5.qtbase qt5.qtsvg qt5.qtwebsockets rclcpp rcpputils ros-environment rosbag2 rosbag2-transport tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PlotJuggler plugin for ROS";
    license = with lib.licenses; [ "AGPLv3" ];
  };
}
