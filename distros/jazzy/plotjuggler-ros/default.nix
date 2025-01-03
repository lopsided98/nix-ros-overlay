
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, plotjuggler, qt5, rclcpp, rcpputils, ros-environment, rosbag2, rosbag2-transport, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-plotjuggler-ros";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/jazzy/plotjuggler_ros/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "5ecad8698a479f50f6443eb7143a62b18b6841f4f2d21f0ce8490235372c90cf";
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
