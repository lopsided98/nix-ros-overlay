
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, plotjuggler, qt5, ros-type-introspection, rosbag-storage, roscpp, roscpp-serialization, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-plotjuggler-ros";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/PlotJuggler/plotjuggler-ros-plugins-release/archive/release/noetic/plotjuggler_ros/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "8578f8bb447761bba79ca0a8ed071668e987422402e4b46961a5bc3812dca47a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ binutils boost plotjuggler qt5.qtbase qt5.qtsvg qt5.qtwebsockets ros-type-introspection rosbag-storage roscpp roscpp-serialization tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PlotJuggler plugin for ROS'';
    license = with lib.licenses; [ "AGPLv3" ];
  };
}
