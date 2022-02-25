
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, binutils, boost, diagnostic-msgs, fastcdr, geometry-msgs, nav-msgs, plotjuggler, plotjuggler-msgs, qt5, rclcpp, rcpputils, rosbag2, rosbag2-transport, sensor-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-plotjuggler-ros";
  version = "1.7.1-r1";

  src = fetchurl {
    url = "https://github.com/PlotJuggler/plotjuggler-ros-plugins-release/archive/release/galactic/plotjuggler_ros/1.7.1-1.tar.gz";
    name = "1.7.1-1.tar.gz";
    sha256 = "fe0e12fd2161ed6100846ebcfe160f37a20e410060f82cda8718d812a5b630cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost diagnostic-msgs fastcdr geometry-msgs nav-msgs plotjuggler plotjuggler-msgs qt5.qtbase qt5.qtsvg qt5.qtwebsockets rclcpp rcpputils rosbag2 rosbag2-transport sensor-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler plugin for ROS'';
    license = with lib.licenses; [ gpl3 ];
  };
}
