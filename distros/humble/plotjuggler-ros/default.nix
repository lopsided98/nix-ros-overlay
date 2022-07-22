
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, diagnostic-msgs, fastcdr, geometry-msgs, nav-msgs, plotjuggler, plotjuggler-msgs, qt5, rclcpp, rcpputils, rosbag2, rosbag2-transport, sensor-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-plotjuggler-ros";
  version = "1.7.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-ros-plugins-release/archive/release/humble/plotjuggler_ros/1.7.1-3.tar.gz";
    name = "1.7.1-3.tar.gz";
    sha256 = "a0859904ec7094be45e1b05568231b31d13507d8493d1bd8d6c69ef2529cda63";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ binutils boost diagnostic-msgs fastcdr geometry-msgs nav-msgs plotjuggler plotjuggler-msgs qt5.qtbase qt5.qtsvg qt5.qtwebsockets rclcpp rcpputils rosbag2 rosbag2-transport sensor-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler plugin for ROS'';
    license = with lib.licenses; [ "AGPLv3" ];
  };
}
