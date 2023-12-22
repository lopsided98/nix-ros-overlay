
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, plotjuggler, qt5, rclcpp, rcpputils, rosbag2, rosbag2-transport, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-plotjuggler-ros";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/iron/plotjuggler_ros/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "011e71b277e14135d6b8cba4bbd47d10d2e9a31eab8f5773bc7fdf8b6bf1c6df";
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
