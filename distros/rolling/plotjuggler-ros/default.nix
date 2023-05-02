
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, diagnostic-msgs, fastcdr, geometry-msgs, nav-msgs, plotjuggler, plotjuggler-msgs, qt5, rclcpp, rcpputils, rosbag2, rosbag2-transport, sensor-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-plotjuggler-ros";
  version = "1.7.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/rolling/plotjuggler_ros/1.7.3-5.tar.gz";
    name = "1.7.3-5.tar.gz";
    sha256 = "cbbc462d1ad3471ac3a7651c3c6d4df0dcbe7f2e5793c63dde697fdaf8125782";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ binutils boost diagnostic-msgs fastcdr geometry-msgs nav-msgs plotjuggler plotjuggler-msgs qt5.qtbase qt5.qtsvg qt5.qtwebsockets rclcpp rcpputils rosbag2 rosbag2-transport sensor-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler plugin for ROS'';
    license = with lib.licenses; [ "AGPLv3" ];
  };
}
