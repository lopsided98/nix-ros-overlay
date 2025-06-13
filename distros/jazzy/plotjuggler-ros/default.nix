
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, fmt, plotjuggler, plotjuggler-msgs, qt5, rclcpp, rcpputils, rosbag2-transport, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-plotjuggler-ros";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/jazzy/plotjuggler_ros/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "7028f8dac4b8d520b4b9a0b74ad6a20069892bff1c86b2f4857ef400e15cc106";
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
