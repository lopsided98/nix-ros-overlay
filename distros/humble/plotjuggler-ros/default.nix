
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, plotjuggler, qt5, rclcpp, rcpputils, rosbag2, rosbag2-transport, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-plotjuggler-ros";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/humble/plotjuggler_ros/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "9aeb4ad6c9dd8f93bceb8d9734e664ebc4f20a9c2210290dd00fc28422bfea4b";
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
