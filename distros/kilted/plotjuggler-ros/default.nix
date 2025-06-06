
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, fmt, plotjuggler, qt5, rclcpp, rcpputils, ros-environment, rosbag2, rosbag2-transport, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-plotjuggler-ros";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/kilted/plotjuggler_ros/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "8e4b9d2cfbbc5ec251d08e471d9f7c78b14b1c5b8ad2a0307009adc49431d5e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ binutils boost fmt plotjuggler qt5.qtbase qt5.qtsvg qt5.qtwebsockets rclcpp rcpputils ros-environment rosbag2 rosbag2-transport tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PlotJuggler plugin for ROS";
    license = with lib.licenses; [ "AGPLv3" ];
  };
}
