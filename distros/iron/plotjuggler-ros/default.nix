
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, plotjuggler, qt5, rclcpp, rcpputils, rosbag2, rosbag2-transport, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-plotjuggler-ros";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/iron/plotjuggler_ros/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "ba2fa70f1cbe9a2bd1daab56d67cc2fe916b7fbdb5dc93ea8a8d99acce8dff84";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ binutils boost plotjuggler qt5.qtbase qt5.qtsvg qt5.qtwebsockets rclcpp rcpputils rosbag2 rosbag2-transport tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PlotJuggler plugin for ROS";
    license = with lib.licenses; [ "AGPLv3" ];
  };
}
