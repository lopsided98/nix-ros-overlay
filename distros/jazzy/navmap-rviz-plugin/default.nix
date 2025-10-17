
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, navmap-ros-interfaces, pluginlib, rclcpp, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-navmap-rviz-plugin";
  version = "0.2.4-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/jazzy/navmap_rviz_plugin/0.2.4-2.tar.gz";
    name = "0.2.4-2.tar.gz";
    sha256 = "2d2bf3ae02008a8dcc754ee8be18c01b29d96529316984588ac4dd6158d24431";
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
