
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, binutils, boost, catkin, plotjuggler, qt5, ros-type-introspection, rosbag-storage, roscpp, roscpp-serialization, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-plotjuggler-ros";
  version = "2.1.1-r2";

  src = fetchurl {
    url = "https://github.com/PlotJuggler/plotjuggler-ros-plugins-release/archive/release/noetic/plotjuggler_ros/2.1.1-2.tar.gz";
    name = "2.1.1-2.tar.gz";
    sha256 = "c43b46a095b88bb110de93e23d5a71cf6a34592ac92c0f0f14b20d4f49379d16";
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
