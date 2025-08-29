
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, fmt, plotjuggler, plotjuggler-msgs, qt5, rclcpp, rcpputils, rosbag2-transport, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-plotjuggler-ros";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/kilted/plotjuggler_ros/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "0f2202005e12d190145fca319cd678c7295be49eedc2b512838b296bd54eaf49";
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
