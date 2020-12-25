
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, fastcdr, geometry-msgs, nav-msgs, plotjuggler, plotjuggler-msgs, qt5, rclcpp, rcpputils, rosbag2, rosbag2-transport, sensor-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-plotjuggler-ros";
  version = "1.0.1-r4";

  src = fetchurl {
    url = "https://github.com/PlotJuggler/plotjuggler-ros-plugins-release/archive/release/foxy/plotjuggler_ros/1.0.1-4.tar.gz";
    name = "1.0.1-4.tar.gz";
    sha256 = "efc52fbaa4cf963ca3b5a20f118abfc9e81e917203d3a63e912d44eb2b63b868";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost fastcdr geometry-msgs nav-msgs plotjuggler plotjuggler-msgs qt5.qtbase qt5.qtsvg qt5.qtwebsockets rclcpp rcpputils rosbag2 rosbag2-transport sensor-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler plugin for ROS'';
    license = with lib.licenses; [ gpl3 ];
  };
}
