
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, diagnostic-msgs, fastcdr, geometry-msgs, nav-msgs, plotjuggler, plotjuggler-msgs, qt5, rclcpp, rcpputils, rosbag2, rosbag2-transport, sensor-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-plotjuggler-ros";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/PlotJuggler/plotjuggler-ros-plugins-release/archive/release/galactic/plotjuggler_ros/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "be0bcdd99993ddd30072c1a8150db442141a53ae5d2fc39fb17d6bcd7b054640";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost diagnostic-msgs fastcdr geometry-msgs nav-msgs plotjuggler plotjuggler-msgs qt5.qtbase qt5.qtsvg qt5.qtwebsockets rclcpp rcpputils rosbag2 rosbag2-transport sensor-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler plugin for ROS'';
    license = with lib.licenses; [ gpl3 ];
  };
}
