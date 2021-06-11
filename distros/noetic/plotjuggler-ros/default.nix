
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, diagnostic-msgs, geometry-msgs, nav-msgs, plotjuggler, plotjuggler-msgs, qt5, rosbag-storage, roscpp, roscpp-serialization, sensor-msgs, tf, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-plotjuggler-ros";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/PlotJuggler/plotjuggler-ros-plugins-release/archive/release/noetic/plotjuggler_ros/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "e01d38d56a8eb2dd2b6433656032100c7bdf2b57004bc3a3cc5ab741ca648e82";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost diagnostic-msgs geometry-msgs nav-msgs plotjuggler plotjuggler-msgs qt5.qtbase qt5.qtsvg qt5.qtwebsockets rosbag-storage roscpp roscpp-serialization sensor-msgs tf tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler plugin for ROS'';
    license = with lib.licenses; [ gpl3 ];
  };
}
