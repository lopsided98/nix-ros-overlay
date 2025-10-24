
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, navmap-ros-interfaces, pluginlib, rclcpp, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-navmap-rviz-plugin";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/jazzy/navmap_rviz_plugin/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "9107f506f3d08ec6100a7ffe05dd105a6e918e616451d223c8ff12a54aecaa74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs navmap-ros-interfaces pluginlib rclcpp rviz-common rviz-default-plugins rviz-rendering sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RViz2 display plugin for NavMap surfaces and layers.";
    license = with lib.licenses; [ asl20 ];
  };
}
