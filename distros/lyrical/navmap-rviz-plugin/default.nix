
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pluginlib, rclcpp, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-navmap-rviz-plugin";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/lyrical/navmap_rviz_plugin/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "f35a67978992a33ffa83c7016c4e8b0c1e12dfb8db4efc42e98b5ad5b32e4364";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs navmap-core navmap-ros navmap-ros-interfaces pluginlib rclcpp rviz-common rviz-default-plugins rviz-rendering sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RViz2 display plugin for NavMap surfaces and layers.";
    license = with lib.licenses; [ asl20 ];
  };
}
