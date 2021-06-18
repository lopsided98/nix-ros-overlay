
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, diagnostic-msgs, geometry-msgs, nav-msgs, plotjuggler, plotjuggler-msgs, qt5, rosbag-storage, roscpp, roscpp-serialization, sensor-msgs, tf, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-plotjuggler-ros";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/PlotJuggler/plotjuggler-ros-plugins-release/archive/release/noetic/plotjuggler_ros/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "df7beb44529236073957920b5e0afe58bb4effc20f7e5848e46feb29cdb19f8b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ binutils boost diagnostic-msgs geometry-msgs nav-msgs plotjuggler plotjuggler-msgs qt5.qtbase qt5.qtsvg qt5.qtwebsockets rosbag-storage roscpp roscpp-serialization sensor-msgs tf tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler plugin for ROS'';
    license = with lib.licenses; [ gpl3 ];
  };
}
